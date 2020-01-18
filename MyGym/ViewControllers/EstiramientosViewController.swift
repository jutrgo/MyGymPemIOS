//
//  EstiramientosViewController.swift
//  MyGym
//
//  Created by Juan Trujillo González on 15/01/2020.
//  Copyright © 2020 JuanTrujilloGonzález. All rights reserved.
//

import UIKit

class EstiramientosViewController: UIViewController {
    var estiramiento: EstiramientoModel = EstiramientoModel()
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
 
    
    @IBOutlet weak var namelabel2: UILabel!
    @IBOutlet weak var descriptionLabel2: UILabel!
    
    
    @IBOutlet weak var nameLabel3: UILabel!
    @IBOutlet weak var descriptionLabel3: UILabel!
    
    @IBOutlet weak var nameLabel4: UILabel!
    @IBOutlet weak var descriptionLabel4: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view
//        nameLabel.text = estiramiento?.getListaEstiramientos(id: 0)

        nameLabel.text = "Dorsales y triceps"
        descriptionLabel.text = "De pie o sentada, con los brazos sobre la cabeza, se sostiene un codo con la mano contraria. Lentamente, tiramos el codo hacia la nuca. Se recomienda aguantar 15 segundos con cada brazo"
        
        namelabel2.text = "Gemelos y tendones"
        descriptionLabel2.text = "Flexionamos una pierna y la otra la estiramos. Realmente es un buen ejercicio de estiramiento no solo para los gemelos y tendones sino la pierna en general. Estaremos 15 segundos con cada pierna."
        
        nameLabel3.text = "Cuadriceps"
        descriptionLabel3.text = "Para estirar los cuádriceps y la rodilla, nos sujetaremos la parte posterior de un pie con la mano, tirando de él lentamente hacia las nalgas. Aguantamos 30 segundos con cada pierna."
        
        nameLabel4.text = "Piernas"
        descriptionLabel4.text = "Tumbada, con una pierna estirada y con otra flexionada hacia el pecho. Estamos con casa pierna 10 segundos."

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
