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
       if let url = URL(string: "http://www.ioslab.acatlan.unam.mx/index.html#lineamientos") {
           UIApplication.shared.open(url)
       }
        
    
    }

}
