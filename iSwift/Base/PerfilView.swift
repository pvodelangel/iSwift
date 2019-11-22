//
//  PerfilView.swift
//  iSwift
//
//  Created by Paola Vanessa Orozco Del Angel on 22/11/19.
//  Copyright © 2019 Manuel Alejandro Aguilar Tellez Giron. All rights reserved.
//

import UIKit

class PerfilView: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var imagenP: UIImageView!
    @IBOutlet weak var nombreP: UITextField!
    @IBOutlet weak var apellidoPaternoP: UITextField!
    @IBOutlet weak var apellidoMaternoP: UITextField!
    @IBOutlet weak var correoElectronicoP: UITextField!
    @IBOutlet weak var numeroCuentaP: UITextField!
    @IBOutlet weak var pickerGeneroP: UIPickerView!
    @IBOutlet weak var pickerCarreraP: UIPickerView!
    @IBOutlet weak var contrasenaP: UITextField!
    @IBOutlet weak var botonStyleP: UIButton!
    var pickerDataCarrera: [String] = [String]()
    var carrera:String = String()
    var pickerDataGenero: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        botonStyleP.layer.cornerRadius = 10
        self.pickerCarreraP.delegate = self as! UIPickerViewDelegate
        self.pickerCarreraP.dataSource = self as! UIPickerViewDataSource
        
        pickerDataCarrera = ["Ingeniería Civil", "Matemáticas Aplicadas y Computación", "Actuaría", "Diseño Gráfico", "Arquitectura", "Derecho", "Ciencias Políticas y Administración Pública", "Economía","Relaciones Internacionales", "Sociología", "Comunicación", "Enseñanza de Inglés", "Filosofía", "Historia",
        "Lengua y Literatura Hispánicas",
        "Pedagogía"]
        
        self.pickerGeneroP.delegate = self as! UIPickerViewDelegate
           self.pickerGeneroP.dataSource = self as! UIPickerViewDataSource
        pickerDataGenero = ["Masculino", "Femenino"]
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
           1
       }
       
       func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        var countrows:Int=pickerDataGenero.count
        if pickerView == pickerCarreraP {
            return self.pickerDataCarrera.count
        }
        return countrows
       }
       
       func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
          
        if pickerView == pickerCarreraP{
            return pickerDataCarrera[row]
        } else {
            return pickerDataGenero[row]
        }
        
       }
       
       func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == pickerCarreraP {
            carrera = pickerDataCarrera[row]
        } else {
            if pickerDataGenero[row] == "Femenino" {
                imagenP.image = UIImage(named: "Mujer")
            }else{
                imagenP.image = UIImage(named: "Hombre")
            }
        }
        
       }

  

}
