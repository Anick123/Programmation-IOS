//
//  AddViewController.swift
//  TpToDoList
//
//  Created by Anïck Ryane Mouafo Mawetze on 13/12/2022.
//

import UIKit

class AddViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        nom.delegate = self
        // Do any additional setup after loading the view.
    }
    
    var data : Todo?
//fonction préparant les données à etre ajoutées les données présentes dans le textfield
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        data = Todo(nom: nom.text!, desc: desc.text!, stat: false, date: date_t.date)
    }
    
    @IBOutlet weak var desc: UITextField!
    @IBOutlet weak var nom: UITextField!
    @IBOutlet weak var date_t: UIDatePicker!
    /*
    // MARK: - Navigation

     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    
    
}
