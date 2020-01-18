//
//  MiRutinaAddViewController.swift
//  MyGym
//
//  Created by Juan Trujillo González on 16/01/2020.
//  Copyright © 2020 JuanTrujilloGonzález. All rights reserved.
//

import UIKit

class MiRutinaAddViewController: UIViewController {
    
    var addModel: MiRutinaAddModel = MiRutinaAddModel()
    
    
    @IBOutlet weak var tituloTextField: UITextField!
    @IBOutlet weak var categoriaTextField: UITextField!
    @IBOutlet weak var ejercicioTextField: UITextField!
    @IBOutlet weak var seriesTextField: UITextField!
    @IBOutlet weak var repeticionesTextField: UITextField!
    @IBOutlet weak var tiempoTextField: UITextField!
    @IBOutlet weak var observacionesTextField: UITextField!
    
    var model: MiRutinaAddModel?

    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
//    @IBAction func donePressed(_ sender: Any) {
//
//        let titulo = tituloTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
//        let categoria = categoriaTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
//        let ejercicio = ejercicioTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
//        let series = seriesTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
//        let repeticiones = repeticionesTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
//        let tiempo = tiempoTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
//        let observaciones = observacionesTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
//
//        if !validateForm() {
//            let alert = UIAlertController(
//                title:"" ,
//                message: "Fields must not be empty",
//                preferredStyle: .alert)
//
//            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (UIAlertAction) in
//            }))
//            self.present(alert, animated: true, completion: nil)
//        }else{
//            model = MiRutinaAddModel()
//
//            model?.addRutina(titulo: titulo!, categoria: categoria!, ejercicio: ejercicio!, series: series!, repeticiones: repeticiones!, tiempo: tiempo!, observaciones: observaciones!) { (error) in
//                if error {
//                    let alert = UIAlertController(
//                        title:"" ,
//                        message: "User has been created before",
//                        preferredStyle: .alert)
//
//                    alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (UIAlertAction) in
//                    }))
//                    self.present(alert, animated: true, completion: nil)
//                }else{
//                    //Una vez se ha añadido el contacto regresamos a la lista de contactos
//                    self.navigationController?.popToRootViewController(animated: true)
//
//                }
//            }
//        }
//
//    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let titulo = tituloTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        let categoria = categoriaTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        let ejercicio = ejercicioTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        let series = seriesTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        let repeticiones = repeticionesTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        let tiempo = tiempoTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        let observaciones = observacionesTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if(segue.identifier == "retornaAdd"){
            addModel.addRutina(titulo: titulo!, categoria: categoria!, ejercicio: ejercicio!, series: series!, repeticiones: repeticiones!, tiempo: tiempo!, observaciones: observaciones!) { (error) in
                if (error == false){
                    print("se agrego")
                } else{
                    print("no se agrego el usuario")
                }
            }
        }
    }
    
//    func validateForm()->Bool{
//        if tituloTextField.text != nil && categoriaTextField.text != nil && ejercicioTextField.text != nil && seriesTextField.text != nil && repeticionesTextField.text != nil && tiempoTextField.text != nil && observacionesTextField.text != nil{
//            if tituloTextField.text != "" && categoriaTextField.text != "" && ejercicioTextField.text != "" && seriesTextField.text != "" && repeticionesTextField.text != "" && tiempoTextField.text != "" && observacionesTextField.text != "" {
//                return true
//            }
//        }
//        return false
//
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
