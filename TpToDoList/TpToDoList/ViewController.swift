//
//  ViewController.swift
//  TpToDoList
//
//  Created by Anïck Ryane Mouafo Mawetze on 09/11/2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource{
    //nombre de cellules du tableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return new_data.count
    }
    //récupère une cellule et la peuple de diff elements
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "ToDocell", for: indexPath) as! toDoTableViewCell
        cell.titre.text = new_data[indexPath.row].nom
        //cell.Description.text = data[indexPath.row].desc
        cell.statut.isOn = new_data[indexPath.row].stat
        
        return cell
    }
    
    
    @IBOutlet weak var myTableView: UITableView!
    var data : [Todo] = []
    var new_data : [Todo] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
            let nom = "faire les courses"
            let desc = "lait oeuf"
            let stat = false
            let d = Todo(nom: nom, desc: desc, stat: stat, date: Date())
            data.append(d)
        
        for _ in 2...3{
            let nom = "faire du sport"
            let desc = "gym d'entretien"
            let stat = false
            let d = Todo(nom: nom, desc: desc, stat: stat, date: Date())
            data.append(d)
        }
        myTableView.dataSource = self
        data = data.sorted(by: {$0.date < $1.date})
        
        new_data = data
        
    }

    //Prépare le tableau à recevoir les données
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewcontroller = segue.destination as?  TachesViewController  { let row = myTableView.indexPathForSelectedRow?.row
            viewcontroller.data = new_data[row!]
        }
    }
    //Ajoute les données au tableView
    @IBAction func add(_ unwindSegue: UIStoryboardSegue) {
        // Use data from the view controller which initiated the unwind segue
        if let viewcontroller = unwindSegue.source as? AddViewController {
            if let newTodo = viewcontroller.data {
                data.append(newTodo)
                myTableView.reloadData()
                data = data.sorted(by: {$0.date < $1.date})//Tri d'en fonction de la date
                new_data = data
            }
            else {
                print("if 2")
            }
        }
        else {
            print("if 1")
        }
        
    }
    //Supprime les données du tableView
    @IBAction func del(_ unwindSegue: UIStoryboardSegue) {
        // Use data from the view controller which initiated the unwind segue
        if let viewcontroller = unwindSegue.source as? TachesViewController {
            viewcontroller.dismiss(animated: true, completion: nil)
            
            let row = (myTableView.indexPathForSelectedRow?.row)!
            new_data.remove(at: row)
            myTableView.reloadData()
        
        }
    }
    
}

