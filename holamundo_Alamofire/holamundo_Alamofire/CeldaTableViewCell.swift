//
//  CeldaTableViewCell.swift
//  holamundo_Alamofire
//
//  Created by Andres Abraham Bonilla Gòmez on 20/07/18.
//  Copyright © 2018 beHere. All rights reserved.
//

import UIKit

class CeldaTableViewCell: UITableViewCell {



    @IBOutlet weak var nombrePokemon: UILabel!
    @IBOutlet weak var imagenPokemon: UIImageView!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
