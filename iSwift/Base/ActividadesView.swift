//
//  ActividadesView.swift
//  iSwift
//
//  Created by Paola Vanessa Orozco Del Angel on 22/11/19.
//  Copyright © 2019 Manuel Alejandro Aguilar Tellez Giron. All rights reserved.
//

import UIKit

class ActividadesView: UIViewController {

    @IBOutlet weak var logoActividad: UIImageView!
    @IBOutlet weak var nombreActividad: UILabel!
    @IBOutlet weak var descripcionActividad: UITextView!
    @IBOutlet weak var styleButton: UIButton!
    var imagenActividad:UIImage!
      var nombreActividades:String!
      var descripcionActividades:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.logoActividad.image = imagenActividad
        self.nombreActividad.text = nombreActividades
        self.descripcionActividad.text = descripcionActividades
        //Para redondear la imagen
        logoActividad.layer.cornerRadius = 125
        //Animación
        logoActividad.clipsToBounds = true
        // Do any additional setup after loading the view.
        styleButton.layer.cornerRadius = 10
    }
    

 

}
