//
//  AgregarActividadView.swift
//  iSwift
//
//  Created by Paola Vanessa Orozco Del Angel on 22/11/19.
//  Copyright © 2019 Manuel Alejandro Aguilar Tellez Giron. All rights reserved.
//

import UIKit

class AgregarActividadView: UIViewController {

    @IBOutlet weak var nombreActividad: UITextField!
    @IBOutlet weak var descripcionActividad: UITextField!
    @IBOutlet weak var stylebutton: UIButton!
    @IBOutlet weak var styleButtomPencil: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stylebutton.layer.cornerRadius = 10
        styleButtomPencil.layer.cornerRadius = 25
        // Do any additional setup after loading the view.
    }
    
    @IBAction func cambioImagen(_ sender: Any) {
    
    }
    
    @IBAction func guardarActividad(_ sender: Any) {
        let alert = UIAlertController(title: "Alta de Actividad Éxitosa", message: nil, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    

}
