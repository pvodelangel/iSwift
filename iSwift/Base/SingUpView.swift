//
//  SingUpView.swift
//  iSwift
//
//  Created by Paola Vanessa Orozco Del Angel on 21/11/19.
//  Copyright © 2019 Manuel Alejandro Aguilar Tellez Giron. All rights reserved.
//

import UIKit

class SingUpView: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var botonStyleRegistro: UIButton!
    @IBOutlet weak var nombre: UITextField!
    @IBOutlet weak var apellidoPaterno: UITextField!
    @IBOutlet weak var apellidoMaterno: UITextField!
    @IBOutlet weak var correoElectronicoR: UITextField!
    @IBOutlet weak var numeroCuenta: UITextField!
    @IBOutlet weak var contrasenaR: UITextField!
    @IBOutlet weak var pickerOutlet: UIPickerView!
    
    var pickerData: [String] = [String]()
    var carrera:String = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    botonStyleRegistro.layer.cornerRadius = 10
        self.pickerOutlet.delegate = self as! UIPickerViewDelegate
        self.pickerOutlet.dataSource = self as! UIPickerViewDataSource
        
    pickerData = ["Ingeniería Civil", "Matemáticas Aplicadas y Computación", "Actuaría", "Diseño Gráfico", "Arquitectura", "Derecho", "Ciencias Políticas y Administración Pública", "Economía","Relaciones Internacionales", "Sociología", "Comunicación", "Enseñanza de Inglés", "Filosofía", "Historia",
    "Lengua y Literatura Hispánicas",
    "Pedagogía"]
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        carrera = pickerData[row]
    }

    @IBAction func BotonRegistro(_ sender: Any) {
        
    }
    

}
