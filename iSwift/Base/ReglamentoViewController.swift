//
//  ReglamentoViewController.swift
//  iSwift
//
//  Created by Paola Vanessa Orozco Del Angel on 22/11/19.
//  Copyright © 2019 Manuel Alejandro Aguilar Tellez Giron. All rights reserved.
//

import UIKit

class ReglamentoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        openUrl(url: "http://www.ioslab.acatlan.unam.mx/index.html#lineamientos")
        
    }
    func openUrl(url:String!) {

        let targetURL=NSURL(fileURLWithPath: url)

        let application=UIApplication.shared

        application.openURL(targetURL as URL)

    }

   

}
