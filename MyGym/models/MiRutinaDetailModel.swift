//
//  MiRutinaDetailModel.swift
//  MyGym
//
//  Created by Juan Trujillo González on 17/01/2020.
//  Copyright © 2020 JuanTrujilloGonzález. All rights reserved.
//

import Foundation
import FirebaseDatabase


class MiRutinaDetailModel{
    func deleteMiRutina(id: String ,completion: @escaping (Bool)->Void) {
        let ref = Database.database().reference().child("misrutinas").child(id)
        ref.removeValue { (error, ref) in
            if (error != nil) {
                completion(true)
            } else {
                completion(false)
            }
        }
    }
    
}
