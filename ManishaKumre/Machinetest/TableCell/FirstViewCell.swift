//
//  FirstViewCell.swift
//  Machinetest
//
//  Created by Manishakumre on 19/08/23.
//

import UIKit

class FirstViewCell: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource {
    var magzData:[Photos]?
   
    @IBOutlet weak var mCollectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
      
    collectionViewSetup()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
              
    }
    func configuretablecell(with magzData: [Photos]?) {
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
        mCollectionView.register(UINib(nibName: "CollectionViewCell", bundle: Bundle.main), forCellWithReuseIdentifier: "CollectionViewCell")
    setCollectionViewLayouts()
    }
    func setCollectionViewLayouts(){
            let flowLayout=UICollectionViewFlowLayout()
            flowLayout.scrollDirection = .horizontal
            
        flowLayout.itemSize=CGSize(width: 350, height: 350)
            flowLayout.minimumLineSpacing = 20
         flowLayout.minimumInteritemSpacing = 20
        mCollectionView.layer.cornerRadius = 20
            mCollectionView.setCollectionViewLayout(flowLayout, animated: true)
           /// CollectiobView1.setCollectionViewLayout(flowLayout, animated: true)
          
        }

}


extension FirstViewCell:UICollectionViewDelegateFlowLayout{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return magzData?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as? CollectionViewCell else { return UICollectionViewCell() }
//        cell.Imagevieww.image=UIImage(named: magzData![indexPath.row].photo!)
//        print("lalala",magzData![indexPath.row].photo_id!)
        if let count = magzData?.count {
            if count > indexPath.item {
//                cell.configureCollectionCell(with: magzDataArr?[indexPath.item])
            }
        }
      let dataimage=magzData![indexPath.item].photo!
        cell.Imagevieww.download(from: dataimage)
        print("lalala",magzData![indexPath.item].photo!)
        cell.Label1.text="\(magzData![indexPath.item].status?.uppercased() ?? "")"
      
        return cell
    }
   
}
extension UIImageView {
    
    
    
    private func downloaded(from url: URL, contentMode mode: UIView.ContentMode = .scaleAspectFit) {
//        var task = URLSessionDataTask!
//        var imageCache = NSCache<AnyObject,AnyObject>()
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard
                let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
                let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                let data = data, error == nil,
                let image = UIImage(data: data)
                else { return }
            DispatchQueue.main.async() { [weak self] in
                self?.image = image
                self?.contentMode = mode
                self?.backgroundColor = .clear
            }
        }.resume()
    }
    
    func download(from link: String, contentMode mode: UIView.ContentMode = .scaleAspectFill) {
        guard let url = URL(string: link) else { return }
        downloaded(from: url, contentMode: mode)
    }
}
