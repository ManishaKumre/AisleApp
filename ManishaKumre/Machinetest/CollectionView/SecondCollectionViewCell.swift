//
//  SecondCollectionViewCell.swift
//  Machinetest
//
//  Created by Manishakumre on 19/08/23.
//

import UIKit

class SecondCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var Imagevieww: UIImageView!
    @IBOutlet weak var Label1: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        Imagevieww.layer.cornerRadius=10
    }

}
