//
//  MiRutinaAddModel.swift
//  MyGym
//
//  Created by Juan Trujillo González on 16/01/2020.
//  Copyright © 2020 JuanTrujilloGonzález. All rights reserved.
//

import Foundation
import FirebaseDatabase

class MiRutinaAddModel{
    
    var ref: DatabaseReference!
    
    
    // Metodo que inserta una rutina en la base de datos:
    func addRutina(titulo: String,categoria:String,ejercicio:String,series:String,repeticiones:String,tiempo:String,observaciones: String,completion: @escaping (Bool)->Void){
        ref = Database.database().reference()

        ref.observeSingleEvent(of: .value) { (snapshot) in
            if (snapshot.childSnapshot(forPath: "misRutinas").hasChild("titulo")){
                completion(true)
            }else{
                let dictionary = ["titulo":titulo, "categoria":categoria, "ejercicio":ejercicio, "series":series, "repticiones":repeticiones,"tiempo":tiempo, "observaciones":observaciones]
                self.ref.child("misRutinas").childByAutoId().setValue(dictionary)
                completion(false)
            }
        }
    }
}
