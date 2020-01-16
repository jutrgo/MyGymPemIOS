//
//  MasterViewController.swift
//  MyGym
//
//  Created by Juan Trujillo González on 31/12/2019.
//  Copyright © 2019 JuanTrujilloGonzález. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {


    @IBOutlet weak var tableView: UITableView!
    
    let categoryModel: CategoryModel = CategoryModel()    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        tableView.dataSource = self // ¿?
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoryModel.getNumeroCategorias()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaDatos", for: indexPath)
        
        celda.textLabel?.text = categoryModel.getListaCategoria(id: indexPath.row)
        return celda
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "passToMaster"){
            let viewController = segue.destination as! EjercicioViewController
            if let indexPath = tableView.indexPathForSelectedRow {
                viewController.category = categoryModel.listaCategoria[indexPath.row].category
            }
        }
    }
}
