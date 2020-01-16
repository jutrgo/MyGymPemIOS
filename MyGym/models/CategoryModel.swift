//
//  CategoriaModel.swift
//  MyGym
//
//  Created by Juan Trujillo González on 02/01/2020.
//  Copyright © 2020 JuanTrujilloGonzález. All rights reserved.
//

import Foundation


class CategoryModel {
    var listaCategoria: [Category]
    
    init(){
        listaCategoria = []
        self.crearListaCategoria()
    }
    
    private func crearListaCategoria(){
        var category: Category = Category(category: "Pectorales")
        listaCategoria.append(category) // añadir
        
        category = Category(category: "Espalda")
        listaCategoria.append(category) // añadir
        
        category = Category(category: "Hombros")
        listaCategoria.append(category) // añadir
        
        category = Category(category: "Brazos")
        listaCategoria.append(category) // añadir
        
        category = Category(category: "Piernas")
        listaCategoria.append(category) // añadir

    }
    
    func getNumeroCategorias () -> Int{
        return listaCategoria.count
    }

    func getListaCategoria(id: Int) -> String{
        return listaCategoria[id].category
     }

}

