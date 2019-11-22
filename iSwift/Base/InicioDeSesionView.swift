//
//  InicioDeSesionView.swift
//  iSwift
//
//  Created by Paola Vanessa Orozco Del Angel on 21/11/19.
//  Copyright © 2019 Manuel Alejandro Aguilar Tellez Giron. All rights reserved.
//

import UIKit

class InicioDeSesionView: UIViewController {
    @IBOutlet weak var correoElectronico: UITextField!
    @IBOutlet weak var contrasena: UITextField!
    @IBOutlet weak var botonIS: UIButton!
    @IBOutlet weak var botonR: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        botonR.layer.cornerRadius = 10
        botonIS.layer.cornerRadius = 10
        
    }
    
    @IBAction func bottonIniciarSesion(_ sender: Any) {
    //Si coincide correo y contraseña ir directamente a Tab Bar Contro
    }
    
   

}
