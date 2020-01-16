//
//  DetailViewController.swift
//  MyGym
//
//  Created by Juan Trujillo González on 03/01/2020.
//  Copyright © 2020 JuanTrujilloGonzález. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var ejercicio: Ejercicio?
    
    @IBOutlet weak var etiquetaNombre: UILabel!
    @IBOutlet weak var etiquetaCategoria: UILabel!
    @IBOutlet weak var etiquetaDescripcion: UILabel!
    @IBOutlet weak var etiquetaImagen: UIImageView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        fillView()

        // Do any additional setup after loading the view.
    }
    
    func fillView(){ //rellenamos las label con lo que tenemos en ejercicio
        etiquetaNombre.text = ejercicio!.nombreEjercicio
        etiquetaCategoria.text = ejercicio!.categoria
        etiquetaDescripcion.text = ejercicio!.descripcion
        etiquetaImagen.image = UIImage.init(named: ejercicio!.nombreEjercicio)
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
