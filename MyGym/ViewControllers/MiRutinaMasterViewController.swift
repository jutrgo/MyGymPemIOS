//
//  MiRutinaMasterViewController.swift
//  MyGym
//
//  Created by Juan Trujillo González on 16/01/2020.
//  Copyright © 2020 JuanTrujilloGonzález. All rights reserved.
//

import UIKit

class MiRutinaMasterViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    let masterModel: MiRutinaMasterModel = MiRutinaMasterModel()
    var lista: [MiRutina]?
    
    
    override func viewWillAppear(_ animated: Bool){
        super.viewWillAppear(true)
        DispatchQueue.main.async {
            self.masterModel.obtenerRutina { (listaRecibida) in
                self.lista = listaRecibida
                self.tableView.reloadData()
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if lista == nil {
            return 0
        } else {
            return lista!.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaDatos", for: indexPath)
        
        celda.textLabel?.text = lista?[indexPath.row].titulo ?? ""
        
        return celda
    }
    
    
    // ---- Segues ------- 
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "passToDetail"){
            let detailViewController = (segue.destination as! MiRutinaDetailViewController)
            if let indexPath = tableView.indexPathForSelectedRow{
                detailViewController.miRutina = lista![indexPath.row]
            }
            
        }
        
    }
    
}
