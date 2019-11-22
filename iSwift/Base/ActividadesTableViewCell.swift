//
//  ActividadesTableViewCell.swift
//  iSwift
//
//  Created by Paola Vanessa Orozco Del Angel on 22/11/19.
//  Copyright © 2019 Manuel Alejandro Aguilar Tellez Giron. All rights reserved.
//

import UIKit

class ActividadesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imagenActividad: UIImageView!
    @IBOutlet weak var descripcionActividad: UILabel!
    @IBOutlet weak var nombreActividad: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
