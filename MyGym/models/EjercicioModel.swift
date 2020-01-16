//
//  MasterModel.swift
//  MyGym
//
//  Created by Juan Trujillo González on 01/01/2020.
//  Copyright © 2020 JuanTrujilloGonzález. All rights reserved.
//

import Foundation

class EjercicioModel {
    var ejercicios: [Ejercicio]
    var ejerciciosFiltrados: [Ejercicio]
    
    init(category:String){
        ejercicios = []
        ejerciciosFiltrados = []
        self.crearEjercicios()
        self.filtrar(categoria: category)
    }
    
    func filtrar(categoria: String){
        for item in ejercicios {
            if item.categoria == categoria {
                ejerciciosFiltrados.append(item)
            }
        }
    }
    
    private func crearEjercicios(){
        var ejercicio: Ejercicio = Ejercicio(nombreEjercicio: "Press de Banca plano", categoria: "Pectorales", descripcion: "Acostado sobre un banco plano, glúteos en contacto con el banco, pies en el suelo. - Coger la barra, manos en pronacion y separadas a la anchura de los hombros. - Inspirar y bajar la barra hasta el pecho, controlando el movimiento. - Desarrollar expirando al final del esfuerzo.")
        ejercicios.append(ejercicio) // añadir
        
        ejercicio = Ejercicio(nombreEjercicio: "Press de Banca inclinado", categoria: "Pectorales", descripcion: "Levante fsafasfasdfsaffsaffa")
        ejercicios.append(ejercicio) // añadir
        
        ejercicio = Ejercicio(nombreEjercicio: "Press de Banca declinado", categoria: "Pectorales", descripcion: "Levante la barra blabla")
        ejercicios.append(ejercicio) // añadir
        
        ejercicio = Ejercicio(nombreEjercicio: "Flexiones", categoria: "Pectorales", descripcion: "agachateeeeeee")
        ejercicios.append(ejercicio) // añadir
        
        ejercicio = Ejercicio(nombreEjercicio: "Apertura mancuernas", categoria: "Pectorales", descripcion: "vamuosss")
        ejercicios.append(ejercicio) // añadir
   
        
        ejercicio = Ejercicio(nombreEjercicio: "Dominadas", categoria: "Espalda", descripcion: "Agarrese de la barra blabla")
        ejercicios.append(ejercicio) // añadir
        
        ejercicio = Ejercicio(nombreEjercicio: "Polea al pecho", categoria: "Espalda", descripcion: "Agarrese de la barra blabla")
        ejercicios.append(ejercicio) // añadir
        
        ejercicio = Ejercicio(nombreEjercicio: "Polea trasnuca", categoria: "Espalda", descripcion: "Agarrese de la barra blabla")
        ejercicios.append(ejercicio) // añadir
        
        ejercicio = Ejercicio(nombreEjercicio: "Remo horizontal", categoria: "Espalda", descripcion: "Agarrese de la barra blabla")
        ejercicios.append(ejercicio) // añadir
        
        ejercicio = Ejercicio(nombreEjercicio: "Encogimiento de hombros con barra", categoria: "Espalda", descripcion: "Agarrese de la barra blabla")
        ejercicios.append(ejercicio) // añadir
        
        
        ejercicio = Ejercicio(nombreEjercicio: "Press trasnuca", categoria: "Hombros", descripcion: "Fuertee como un roooooble")
        ejercicios.append(ejercicio) // añadir
        
        ejercicio = Ejercicio(nombreEjercicio: "Press frontal con barra", categoria: "Hombros", descripcion: "avfewkadsfmlaks lmkaflsm ")
        ejercicios.append(ejercicio) // añadir
        
        ejercicio = Ejercicio(nombreEjercicio: "Press sentado", categoria: "Hombros", descripcion: "avfewkadsfmlaks lmkaflsm ")
        ejercicios.append(ejercicio) // añadir
        
        ejercicio = Ejercicio(nombreEjercicio: "Remo", categoria: "Hombros", descripcion: "avfewkadsfmlaks lmkaflsm ")
        ejercicios.append(ejercicio) // añadir
        
        ejercicio = Ejercicio(nombreEjercicio: "Pajaro", categoria: "Hombros", descripcion: "avfewkadsfmlaks lmkaflsm ")
        ejercicios.append(ejercicio) // añadir
        
        
        ejercicio = Ejercicio(nombreEjercicio: "Curls de biceps alterno con supinación", categoria: "Brazos", descripcion: "avfewkadsfmlaks lmkaflsm ")
        ejercicios.append(ejercicio) // añadir
        
        ejercicio = Ejercicio(nombreEjercicio: "Curls de biceps con polea", categoria: "Brazos", descripcion: "avfewkadsfmlaks lmkaflsm ")
        ejercicios.append(ejercicio) // añadir
        
        ejercicio = Ejercicio(nombreEjercicio: "Extension de triceps en polea alta", categoria: "Brazos", descripcion: "avfewkadsfmlaks lmkaflsm ")
        ejercicios.append(ejercicio) // añadir
        
        ejercicio = Ejercicio(nombreEjercicio: "Press frances en banco plano con mancuerna", categoria: "Brazos", descripcion: "avfewkadsfmlaks lmkaflsm ")
        ejercicios.append(ejercicio) // añadir
        
        ejercicio = Ejercicio(nombreEjercicio: "Extension vertical alternada de los codos con mancuerna", categoria: "Brazos", descripcion: "avfewkadsfmlaks lmkaflsm ")
        ejercicios.append(ejercicio) // añadir
        
        
        
        ejercicio = Ejercicio(nombreEjercicio: "Squat o Sentadillas", categoria: "Piernas", descripcion: "avfewkadsfmlaks lmkaflsm ")
        ejercicios.append(ejercicio) // añadir
        
        ejercicio = Ejercicio(nombreEjercicio: "Prensa de piernas inclinada", categoria: "Piernas", descripcion: "avfewkadsfmlaks lmkaflsm ")
        ejercicios.append(ejercicio) // añadir
        
        ejercicio = Ejercicio(nombreEjercicio: "Flexión de rodillas con mancuernas", categoria: "Piernas", descripcion: "avfewkadsfmlaks lmkaflsm ")
        ejercicios.append(ejercicio) // añadir
        
        ejercicio = Ejercicio(nombreEjercicio: "Extensiçon de rodillas en máquina", categoria: "Piernas", descripcion: "avfewkadsfmlaks lmkaflsm ")
        ejercicios.append(ejercicio) // añadir
        
        ejercicio = Ejercicio(nombreEjercicio: "Curl de piernas acostado", categoria: "Piernas", descripcion: "avfewkadsfmlaks lmkaflsm ")
        ejercicios.append(ejercicio) // añadir
        
    }
    
    
    func getNumeroEjercicios () -> Int{
        return ejerciciosFiltrados.count
    }
    
    func getListaEjercicio(id: Int) -> String{
        return ejerciciosFiltrados[id].nombreEjercicio // xq id?
    }
    
    func obtenerEjercicio(id: Int) -> Ejercicio{
        return ejerciciosFiltrados[id]
    }
}

