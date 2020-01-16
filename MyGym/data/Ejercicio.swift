//
//  Ejercicio.swift
//  MyGym
//
//  Created by Juan Trujillo González on 01/01/2020.
//  Copyright © 2020 JuanTrujilloGonzález. All rights reserved.
//

import Foundation

class Ejercicio{
    var nombreEjercicio: String
    var categoria: String
    var descripcion: String
    
    init(nombreEjercicio: String, categoria: String, descripcion: String){
        self.nombreEjercicio = nombreEjercicio
        self.categoria = categoria;
        self.descripcion = descripcion;
    }
    
}
