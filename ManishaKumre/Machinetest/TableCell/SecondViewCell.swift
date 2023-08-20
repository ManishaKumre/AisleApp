//
//  SecondViewCell.swift
//  Machinetest
//
//  Created by Manishakumre on 19/08/23.
//

import UIKit

class SecondViewCell: UITableViewCell {

    @IBOutlet weak var upgrade: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        upgrade.layer.cornerRadius=10
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
