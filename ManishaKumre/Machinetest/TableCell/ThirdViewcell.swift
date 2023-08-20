//
//  ThirdViewcell.swift
//  Machinetest
//
//  Created by Manishakumre on 19/08/23.
//

import UIKit


class ThirdViewcell: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource {
    var magzData:[Profiles]?
   
    @IBOutlet weak var mCollectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
      
    collectionViewSetup()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
              
    }
    func configuretablecell(with magzData: [Profiles]?) {
        print("hh",magzData)
        if var magzData = magzData {
            self.magzData = magzData
            print("Sonuu",magzData)
            print("monuuu",magzData)
            //
        }
        mCollectionView.reloadData()
    }
    
    private func collectionViewSetup(){
        mCollectionView.delegate=self
        mCollectionView.dataSource=self
        mCollectionView.isScrollEnabled = true
        mCollectionView.register(UINib(nibName: "SecondCollectionViewCell", bundle: Bundle.main), forCellWithReuseIdentifier: "SecondCollectionViewCell")
    setCollectionViewLayouts()
    }
    func setCollectionViewLayouts(){
            let flowLayout=UICollectionViewFlowLayout()
            flowLayout.scrollDirection = .horizontal
            
        flowLayout.itemSize=CGSize(width: 170, height: 250)
            flowLayout.minimumLineSpacing = 5
         flowLayout.minimumInteritemSpacing = 5
        mCollectionView.layer.cornerRadius=5; mCollectionView.setCollectionViewLayout(flowLayout, animated: true)
           /// CollectiobView1.setCollectionViewLayout(flowLayout, animated: true)
          
        }

}


extension ThirdViewcell:UICollectionViewDelegateFlowLayout{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return magzData?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SecondCollectionViewCell", for: indexPath) as? SecondCollectionViewCell else { return UICollectionViewCell() }
//        cell.Imagevieww.image=UIImage(named: magzData![indexPath.row].photo!)
//        print("lalala",magzData![indexPath.row].photo_id!)
        if let count = magzData?.count {
            if count > indexPath.item {
//                cell.configureCollectionCell(with: magzDataArr?[indexPath.item])
            }
        }
      let dataimage=magzData![indexPath.item].avatar!
        cell.Imagevieww.download(from: dataimage)
        print("lalala",magzData![indexPath.item].avatar!)
    cell.Label1.text="\(magzData![indexPath.item].first_name?.uppercased() ?? "")"
      print("\(cell.Label1.text)")
        return cell
    }
   
}
