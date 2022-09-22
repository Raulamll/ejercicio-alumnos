//
//  ViewController.swift
//  ejercicio-alumnos
//
//  Created by Alumno on 9/22/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class AlumnoController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var alumnos : [Alumno] = []
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 84
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alumnos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaAlumno") as? CeldaAlumnoController
        celda?.lblNombre.text = alumnos[indexPath.row].nombre
        celda?.lblEdad.text = alumnos[indexPath.row].edad
        celda?.lblCarrera.text = alumnos [indexPath.row].carrera
        celda?.lblMatricula.text = alumnos[indexPath.row].matricula
        return celda!
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        alumnos.append(Alumno(nombre: "Jose", edad: "18", carrera: "Derecho", matricula: "11223344"))
    }


}

