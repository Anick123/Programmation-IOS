//
//  toDoTableViewCell.swift
//  TpToDoList
//
//  Created by Anïck Ryane Mouafo Mawetze on 09/11/2022.
//

import UIKit

class toDoTableViewCell: UITableViewCell {

    @IBOutlet weak var titre: UILabel!
    @IBOutlet weak var Description: UILabel!
    @IBOutlet weak var statut: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

   
}
