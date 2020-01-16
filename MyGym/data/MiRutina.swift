//
//  MiRutina.swift
//  MyGym
//
//  Created by Juan Trujillo González on 16/01/2020.
//  Copyright © 2020 JuanTrujilloGonzález. All rights reserved.
//

import Foundation

class MiRutina{
    var titulo: String
    var categoria: String
    var ejercicio: String
    var series: String
    var repeticiones: String
    var tiempo: String
    var observaciones: String
    
    init(titulo: String, categoria: String, ejercicio: String, series: String, repeticiones: String, tiempo: String, observaciones: String){
        self.titulo = titulo
        self.categoria = categoria
        self.ejercicio = ejercicio
        self.series = series
        self.repeticiones = repeticiones
        self.tiempo = tiempo
        self.observaciones = observaciones
    }
    
}
