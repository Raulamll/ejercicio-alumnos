//
//  Alumno.swift
//  ejercicio-alumnos
//
//  Created by Alumno on 9/22/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

class Alumno {
    var nombre: String
    var edad: String
    var carrera: String
    var matricula: String
    
    init(nombre: String, edad: String, carrera: String, matricula: String ) {
        self.nombre = nombre
        self.edad = edad
        self.carrera = carrera
        self.matricula = matricula
    }
}
