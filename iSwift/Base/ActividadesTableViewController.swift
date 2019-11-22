//
//  ActividadesTableViewController.swift
//  iSwift
//
//  Created by Paola Vanessa Orozco Del Angel on 22/11/19.
//  Copyright © 2019 Manuel Alejandro Aguilar Tellez Giron. All rights reserved.
//

import UIKit

class Actividad {
let nombreActividad: String
let descripcionActividad:String
let imagenActividad: UIImage
    
init(nombreActividad: String, descripcionActividad:String, imagenActividad: String) {
    self.nombreActividad = nombreActividad
    self.imagenActividad =  UIImage(named: imagenActividad)!
    self.descripcionActividad = descripcionActividad
}
}
    
class ActividadesTableViewController: UITableViewController {


    let actividades: [Actividad] =
        [
    Actividad(nombreActividad: "Club PWR CODE", descripcionActividad: "Club de Programación orientado a tres niveles", imagenActividad: "clubuno"),
    Actividad(nombreActividad: "PiCoging", descripcionActividad: "Club de Programación orientado a tres niveles", imagenActividad: "clubdos"),
    Actividad(nombreActividad: "Taller SQLite", descripcionActividad: "Club de Programación orientado a tres niveles", imagenActividad: "clubtres"),
    Actividad(nombreActividad: "Open Lab", descripcionActividad: "Club de Programación orientado a tres niveles", imagenActividad: "openlab"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    
    override func numberOfSections(in tableView: UITableView) -> Int
    {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return actividades.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {   //se busca la dirección de la clase TableViewCell
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaDos") as! ActividadesTableViewCell
        //Se igualan variables de ambas clases
        celda.descripcionActividad.text = actividades[indexPath.row].descripcionActividad
        celda.imagenActividad.image = actividades[indexPath.row].imagenActividad
        celda.nombreActividad.text = actividades[indexPath.row].nombreActividad
        
        return celda
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "actividad"
        {
            if let indexPath = self.tableView.indexPathForSelectedRow
            {
                let destino = segue.destination as! ActividadesView
                destino.imagenActividad = self.actividades[indexPath.row].imagenActividad
                destino.nombreActividades = self.actividades[indexPath.row].nombreActividad
                destino.descripcionActividades = self.actividades[indexPath.row].descripcionActividad
            }
        }
    }
}
