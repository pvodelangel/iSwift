//
//  QRCodeViewController.swift
//  iSwift
//
//  Created by Manuel Alejandro Aguilar Tellez Giron on 22/11/19.
//  Copyright © 2019 Manuel Alejandro Aguilar Tellez Giron. All rights reserved.
//

import UIKit

class QRCodeViewController: UIViewController {
    var prove = "lorem ipsum dolor amet consequat"
    @IBOutlet weak var qRGenerateButton: UIButton!
    @IBOutlet weak var qRGeneratedImage: UIImageView!
    var qRCodeImage: CIImage!
    
    
    @IBAction func performButtonAction(_ sender: Any) {
        if qRCodeImage == nil {
            let data = prove.data(using: String.Encoding.isoLatin1, allowLossyConversion: false)
            
            let filter = CIFilter(name: "CIQRCodeGenerator")
            filter?.setValue(data, forKey: "inputMessage")
                        filter?.setValue("Q", forKey: "inputCorrectionLevel")
            
            qRCodeImage = filter?.outputImage
            
            qRGeneratedImage.image = UIImage(ciImage: qRCodeImage)
            
            func displayCodeImage() {
                let scaleX = qRGeneratedImage.frame.size.width / qRCodeImage.extent.size.width
                let scaleY = qRGeneratedImage.frame.size.height / qRCodeImage.extent.size.height
                
                let transformedImage = qRCodeImage.transformed(by: CGAffineTransform(scaleX: scaleX, y: scaleY))
                
                qRGeneratedImage.image = UIImage(ciImage: transformedImage)
            }
            
            displayCodeImage()
        }
    }
}
