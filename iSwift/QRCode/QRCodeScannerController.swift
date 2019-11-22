//
//  QRCodeScannerController.swift
//  iSwift
//
//  Created by Manuel Alejandro Aguilar Tellez Giron on 22/11/19.
//  Copyright © 2019 Manuel Alejandro Aguilar Tellez Giron. All rights reserved.
//

import UIKit
import AVFoundation

class QRCodeSannerController: UIViewController, AVCaptureMetadataOutputObjectsDelegate {
    var captureSession: AVCaptureSession!
    var videoPreviewLayer: AVCaptureVideoPreviewLayer!
    var qRCodeFrameView: UIView?
    var successAlert: UIAlertController!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        captureSession = AVCaptureSession()
        
        guard let captureDevice = AVCaptureDevice.default(for: .video) else { return }
        
        let videoInput: AVCaptureDeviceInput
        
        do {
            videoInput = try AVCaptureDeviceInput(device: captureDevice)
        } catch {
            print(error)
            return
        }
        
        if (captureSession.canAddInput(videoInput)) {
            captureSession.addInput(videoInput)
        } else {
            failed()
            return
        }
        
        let metadataOutput = AVCaptureMetadataOutput()
        
        if captureSession.canAddOutput(metadataOutput) {
            captureSession.addOutput(metadataOutput)
            
            metadataOutput.setMetadataObjectsDelegate(self, queue: DispatchQueue.main)
            metadataOutput.metadataObjectTypes = [.qr]
        } else {
            failed()
            return
        }
        
        videoPreviewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        videoPreviewLayer.frame = view.layer.bounds
        videoPreviewLayer.videoGravity = .resizeAspectFill
        view.layer.addSublayer(videoPreviewLayer)
        
        qRCodeFrameView = UIView()
        
        if let qRCodeFrameView = qRCodeFrameView {
            qRCodeFrameView.layer.borderColor = UIColor.systemOrange.cgColor
            qRCodeFrameView.layer.borderWidth = 4
            view.addSubview(qRCodeFrameView)
            view.bringSubviewToFront(qRCodeFrameView)
        }
        
        captureSession.startRunning()
        
    }
    
    func failed() {
        let alert = UIAlertController(title: "Scanning not supported", message: "Ur device does not support scanning a code from an item. Please use a device w/camera", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "ok", style: .default))
        present(alert, animated: true)
        captureSession = nil
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        if captureSession.isRunning == true {
            captureSession.stopRunning()
        }
    }
    
    func metadataOutput(_ output: AVCaptureMetadataOutput, didOutput metadataObjects: [AVMetadataObject], from connection: AVCaptureConnection) {
        captureSession.stopRunning()
        
        if let metadataObject = metadataObjects.first {
            guard let readableObject = metadataObject as? AVMetadataMachineReadableCodeObject else { return }
            guard let stringValue = readableObject.stringValue else { return }
            AudioServicesPlaySystemSound(SystemSoundID(kSystemSoundID_Vibrate))
            found(code: stringValue)
            
        }
        
        dismiss(animated: true)
        
    }
    
    func found(code: String) {
        
        print(code)
        
        successAlert(title: "OK", message: "Data received, you could get back to the last screen")
    }
    
    func successAlert(title: String, message: String) -> Void {
        successAlert = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
        
        let cancelAction = UIAlertAction(title: "Cool!", style: .cancel, handler: nil)
        
        successAlert.addAction(cancelAction)
        self.present(successAlert, animated: true)
        DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
            self.successAlert.dismiss(animated: true, completion: nil)
        }
    }

}



