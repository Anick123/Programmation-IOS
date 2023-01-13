//
//  TachesViewController.swift
//  TpToDoList
//
//  Created by Anïck Ryane Mouafo Mawetze on 09/12/2022.
//

import UIKit

class TachesViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        //affiche la description et la date 
        if let Todo = data {
            Taches.text = Todo.desc
            
            let format_date = DateFormatter()
            format_date.dateFormat = "dd/MM/yyyy"
            dislay_date.text = format_date.string(from: Todo.date)
        }
        else{
            Taches.text = "Error"
        }
        // Do any additional setup after loading the view.
        //print (Taches.text)
    }
    
    @IBOutlet weak var Taches: UILabel!
    var data : Todo?
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBOutlet weak var dislay_date: UILabel!
    

}
