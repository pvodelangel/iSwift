//
//  RegistroTableViewController.swift
//  iSwift
//
//  Created by Paola Vanessa Orozco Del Angel on 22/11/19.
//  Copyright © 2019 Manuel Alejandro Aguilar Tellez Giron. All rights reserved.
//

import UIKit
class Visita {
    let nombreMaquina: String
    let numeroCuenta:String
    let fecha: String
    
    init(nombreMaquina: String, numeroCuenta:String, fecha: String) {
        self.nombreMaquina = nombreMaquina
        self.numeroCuenta = numeroCuenta
        self.fecha = fecha
    }
}

class RegistroTableViewController: UITableViewController {

    let visitas: [Visita] = [ Visita(nombreMaquina: "MacBook Pro 1", numeroCuenta: "313349702", fecha: "Hoy"),
                              Visita(nombreMaquina: "MacBook Pro 25", numeroCuenta: "313249702", fecha: "Hoy"),
                              Visita(nombreMaquina: "MacBook Pro 13", numeroCuenta: "312349702", fecha: "Hoy"),
                              Visita(nombreMaquina: "MacBook Pro 6", numeroCuenta: "313449702", fecha: "Hoy"),
                              Visita(nombreMaquina: "MacBook Pro 4", numeroCuenta: "314549702", fecha: "Hoy"),
                              Visita(nombreMaquina: "MacBook Pro 7", numeroCuenta: "315549702", fecha: "Hoy"),
                              Visita(nombreMaquina: "MacBook Pro 12", numeroCuenta: "318949702", fecha: "Hoy"),
                              Visita(nombreMaquina: "MacBook Pro 14", numeroCuenta: "313549702", fecha: "Hoy"),
                              Visita(nombreMaquina: "MacBook Pro 11", numeroCuenta: "317749702", fecha: "Hoy"),
                              Visita(nombreMaquina: "MacBook Pro 21", numeroCuenta: "317849702", fecha: "Hoy"),
                              Visita(nombreMaquina: "MacBook Pro 22", numeroCuenta: "319849702", fecha: "Hoy")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return visitas.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {   //se busca la dirección de la clase TableViewCell
        let celda = tableView.dequeueReusableCell(withIdentifier: "celda") as! RegisterMasterTableViewCell
        //Se igualan variables de ambas clases
        celda.nombreMaquina.text = visitas[indexPath.row].nombreMaquina
        celda.numeroCuenta.text = visitas[indexPath.row].numeroCuenta
        celda.fecha.text = visitas[indexPath.row].fecha
        
        return celda
        
    }


}

