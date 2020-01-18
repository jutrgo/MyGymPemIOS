//
//  MiRutinaDetailViewController.swift
//  MyGym
//
//  Created by Juan Trujillo González on 16/01/2020.
//  Copyright © 2020 JuanTrujilloGonzález. All rights reserved.
//

import UIKit

class MiRutinaDetailViewController: UIViewController {
    
    var miRutina: MiRutina?
    var detailModel: MiRutinaDetailModel = MiRutinaDetailModel()
    
    
    @IBOutlet weak var etiquetaTitulo: UILabel!
    @IBOutlet weak var etiquetaCategoria: UILabel!
    @IBOutlet weak var etiquetaEjercicio: UILabel!
    @IBOutlet weak var etiquetaSeries: UILabel!
    @IBOutlet weak var etiquetaRepeticiones: UILabel!
    @IBOutlet weak var etiquetaTiempo: UILabel!
    @IBOutlet weak var etiquetaObservaciones: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        fillView()
    }
    
    func fillView(){
        etiquetaTitulo.text = "Titulo: " + miRutina!.titulo
        etiquetaCategoria.text = "Categoria " + miRutina!.categoria
        etiquetaEjercicio.text = "Ejercicio: " + miRutina!.ejercicio
        etiquetaSeries.text = "Series: " + miRutina!.series
        etiquetaRepeticiones.text = "Repeticiones: " + miRutina!.repeticiones
        etiquetaTiempo.text = "Tiempo: " + miRutina!.tiempo
        etiquetaObservaciones.text = "Observaciones: " + miRutina!.observaciones
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "retornaDelete"){
            detailModel.deleteMiRutina(id: miRutina!.titulo, completion: { (error) in
                if (error == false) {
                    print("se hizo")
                } else {
                    print("no se borro el usuario")
                }
            })
        }
    }
        
        
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
}
