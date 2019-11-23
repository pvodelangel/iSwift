//
//  RegisterMasterTableViewCell.swift
//  iSwift
//
//  Created by Paola Vanessa Orozco Del Angel on 22/11/19.
//  Copyright © 2019 Manuel Alejandro Aguilar Tellez Giron. All rights reserved.
//

import UIKit

class RegisterMasterTableViewCell: UITableViewCell {
    @IBOutlet weak var numeroCuenta: UILabel!
    
    @IBOutlet weak var nombreMaquina: UILabel!
    
    @IBOutlet weak var fecha: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
