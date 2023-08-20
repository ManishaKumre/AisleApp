//
//  CollectionViewCell.swift
//  Machinetest
//
//  Created by Manishakumre on 19/08/23.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var Imagevieww: UIImageView!
    @IBOutlet weak var Label1: UILabel!
    @IBOutlet weak var Label2: UILabel!
    private var magzdata: Photos?
    override func awakeFromNib() {
        super.awakeFromNib()
        Imagevieww.layer.cornerRadius=20
        // Initialization code
    }
 /*   func configureCollectionCell(with photoData: Photos?,row: Int) {
        if let photoData = photoData {
            self.PHDataArr = photoData
            print("PHDataArr___\(photoData)")
//            Imagevieww.download(from: self.PHDataArr?.photo ?? "", contentMode: .scaleAspectFit)
            Imagevieww.image=UIImage(named: PHDataArr!.photo ?? "")
            print(Imagevieww.image=UIImage(named: PHDataArr!.photo_id as! String ))
        }
    }*/
    func configureCollectionCell(with magzData: Photos?) {
        print("hhewww",magzData)
        if let magzData = magzData {
            magzdata = magzData
            print("kitttu",magzData)
            //
        }
    }
}
