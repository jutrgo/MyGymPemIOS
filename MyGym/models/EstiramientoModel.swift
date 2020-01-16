//
//  EstiramientoModel.swift
//  MyGym
//
//  Created by Juan Trujillo González on 15/01/2020.
//  Copyright © 2020 JuanTrujilloGonzález. All rights reserved.
//

import Foundation

class EstiramientoModel{
    var listaEstiramiento: [Estiramiento]
    
    init(){
        listaEstiramiento = []
        self.crearListaEstiramiento()
    }
    
    func crearListaEstiramiento(){
        var estiramiento: Estiramiento = Estiramiento(nombreEstiramiento: "Dorsales y triceps", descripcion: "De pie o sentada, con los brazos sobre la cabeza, se sostiene un codo con la mano contraria. Lentamente, tiramos el codo hacia la nuca. Se recomienda aguantar 15 segundos con cada brazo")
        listaEstiramiento.append(estiramiento)
        
        estiramiento = Estiramiento(nombreEstiramiento: "Dorsal e intercostal", descripcion: "De pie o sentada, con las piernas ligeramente separadas, estiramos alternativamente los brazos intentando alargar una mano más que la otra. Se repite dos veces y aguantamos 5 segundos cada mano. Si eligimos sentadas también estiraremos la espalda. 20 segundos serían suficiente")
        
        estiramiento = Estiramiento(nombreEstiramiento: "Gemelos y tendones", descripcion: "Flexionamos una pierna y la otra la estiramos. Realmente es un buen ejercicio de estiramiento no solo para los gemelos y tendones sino la pierna en general. Estaremos 15 segundos con cada pierna")
        
        estiramiento = Estiramiento(nombreEstiramiento: "Cuadriceps", descripcion: "Para estirar los cuádriceps y la rodilla, nos sujetaremos la parte posterior de un pie con la mano, tirando de él lentamente hacia las nalgas. Aguantamos 30 segundos con cada pierna.")
        
        estiramiento = Estiramiento(nombreEstiramiento: "Piernas", descripcion: "Tumbada, con una pierna estirada y con otra flexionada hacia el pecho. Estamos con casa pierna 10 segundos.")
    }
    
    func getNumeroEstiramientos () -> Int{
        return listaEstiramiento.count
    }
    
    func getListaEstiramientos(id: Int) -> String{
        return listaEstiramiento[id].nombreEstiramiento// xq id?
    }
}
