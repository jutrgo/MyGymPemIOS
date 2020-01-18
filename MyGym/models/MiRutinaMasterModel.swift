//
//  MiRutinaMasterModel.swift
//  MyGym
//
//  Created by Juan Trujillo González on 16/01/2020.
//  Copyright © 2020 JuanTrujilloGonzález. All rights reserved.
//

import Foundation
import FirebaseDatabase


class MiRutinaMasterModel{
    
    
    func obtenerRutina(callback: @escaping ([MiRutina]?)->()){
        var temp: [MiRutina] = []
        //referencia a la base de datos
        let ref = Database.database().reference().child("misrutinas")
        //metodo que obtiene los datos
        ref.observeSingleEvent(of: .value) { (data) in
            if let datos = data.value as? NSDictionary {
                if let prueba = datos.allValues as? [NSDictionary] {
                    for mirutina in prueba {
                        let titulo = mirutina["titulo"] as? String ?? ""
                        let categoria = mirutina["categoria"] as? String ?? ""
                        let ejercicio = mirutina["ejercicio"] as? String ?? ""
                        let series = mirutina["series"] as? String ?? ""
                        let repeticiones = mirutina["repeticiones"] as? String ?? ""
                        let tiempo = mirutina["tiempo"] as? String ?? ""
                        let observaciones = mirutina["observaciones"] as? String ?? ""

                        let miRutinaGuardar = MiRutina(titulo: titulo, categoria: categoria, ejercicio: ejercicio, series: series, repeticiones: repeticiones, tiempo: tiempo, observaciones: observaciones)
                        temp.append(miRutinaGuardar)
                    }
                    callback(temp)
                }
            }
        }
    }
    
}
