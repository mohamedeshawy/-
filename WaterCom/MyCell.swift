//
//  MyCell.swift
//  WaterCom
//
//  Created by Mohamed Eshawy on 2/2/18.
//  Copyright © 2018 Mohamed Eshawy. All rights reserved.
//

import UIKit

class MyCell: UITableViewCell {

    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var services: UILabel!
    @IBOutlet weak var name: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
