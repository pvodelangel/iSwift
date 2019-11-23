//
//  RedesSocialesView.swift
//  iSwift
//
//  Created by Paola Vanessa Orozco Del Angel on 22/11/19.
//  Copyright © 2019 Manuel Alejandro Aguilar Tellez Giron. All rights reserved.
//

import UIKit

class RedesSocialesView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func openUrl(url:String!) {

        let targetURL=NSURL(fileURLWithPath: url)

        let application=UIApplication.shared

        application.openURL(targetURL as URL)

    }
    
    @IBAction func instagramButton(_ sender: Any) {

        if let url = URL(string: "https://www.instagram.com/cedamiosfesacatlan/") {
            UIApplication.shared.open(url)
        }
    }
    
    @IBAction func facebookButton(_ sender: Any) {
       if let url = URL(string: "https://www.facebook.com/CEDAMIOS/") {
                  UIApplication.shared.open(url)
              }
       
    }
    
    @IBAction func webButton(_ sender: Any) {
       if let url = URL(string: "http://www.ioslab.acatlan.unam.mx") {
           UIApplication.shared.open(url)
       }
    
    }
    
}
