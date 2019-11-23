//
//  ConfiguracionView.swift
//  iSwift
//
//  Created by Paola Vanessa Orozco Del Angel on 22/11/19.
//  Copyright © 2019 Manuel Alejandro Aguilar Tellez Giron. All rights reserved.
//

import UIKit

class ConfiguracionView: UIViewController {

    @IBOutlet weak var nuevaContrasena: UITextField!
    @IBOutlet weak var styleButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        styleButton.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func buttonConfigure(_ sender: Any) {
        
        let alert = UIAlertController(title: "Actualización Éxitosa", message: "Tú nueva contraseña esta guardada", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)

    }
    
}
