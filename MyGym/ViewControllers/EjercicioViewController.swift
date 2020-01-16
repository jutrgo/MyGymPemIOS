//
//  EjerciciosViewController.swift
//  MyGym
//
//  Created by Juan Trujillo González on 02/01/2020.
//  Copyright © 2020 JuanTrujilloGonzález. All rights reserved.
//

import UIKit

class EjercicioViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var category: String?
    
    @IBOutlet weak var tableView: UITableView!
    

    var ejercicioModel: EjercicioModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        tableView.dataSource = self // ¿?
        tableView.delegate = self
        print(category)
        ejercicioModel = EjercicioModel(category: category!)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ejercicioModel!.getNumeroEjercicios()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
              let celda = tableView.dequeueReusableCell(withIdentifier: "celdaDatos2", for: indexPath)
          
        celda.textLabel?.text = ejercicioModel!.getListaEjercicio(id: indexPath.row)
          return celda
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "passToDetail"){
            let viewController = segue.destination as! DetailViewController
            if let indexPath = tableView.indexPathForSelectedRow {
                viewController.ejercicio = ejercicioModel!.obtenerEjercicio(id: indexPath.row)
            }
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
