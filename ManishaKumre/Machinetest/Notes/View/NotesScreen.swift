//
//  NotesScreen.swift
//  Machinetest
//
//  Created by Manishakumre on 19/08/23.
//

import UIKit
import Alamofire

class NotesScreen: UIViewController,UITableViewDelegate,UITableViewDataSource  {
    var viewmodel = NotesViewModel()
    
    //MARK: Variable declaration
    @IBOutlet weak var Tableview: UITableView!
    var Array:NotesDataModel?
    var arrrr:NotesDataModel?

  
    //MARK: View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        tableviewSetup()
        var url=Constants.baseUrl+"/users/test_profile_list"
        NotesListGetApi(Header: Token, url: url)

        
    }
    func ccell(with Array: NotesDataModel?) {
        print("hh",Array)
        if let Array = Array {
            self.Array = Array
            print("Sonuu",Array)
            
        }
    }
    
    
}

//MARK: Extension Of NotesScreen
extension NotesScreen{
    
    
    //MARK: TableView SetUp
    func tableviewSetup(){
        Tableview.delegate=self
        Tableview.dataSource=self
        Tableview.register(UINib(nibName:"FirstViewCell" , bundle: Bundle.main), forCellReuseIdentifier: "FirstViewCell")
        Tableview.register(UINib(nibName:"SecondViewCell" , bundle: Bundle.main), forCellReuseIdentifier: "SecondViewCell")
        Tableview.register(UINib(nibName:"ThirdViewcell" , bundle: Bundle.main), forCellReuseIdentifier: "ThirdViewcell")
      
        
    }
    
    
    //MARK: TableView Methods
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let section = indexPath.section
        
        switch section{
            case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "FirstViewCell") as! FirstViewCell
            print("welcome")
            if let data = arrrr?.invites?.profiles![indexPath.row].photos! {
                cell.configuretablecell(with: data)
                print("data yeh lo:\(data)")
            }
            return cell
            
        case 1 :
            let cell = tableView.dequeueReusableCell(withIdentifier: "SecondViewCell") as! SecondViewCell
            
            return cell

        case 2 :
            let cell = tableView.dequeueReusableCell(withIdentifier: "ThirdViewcell") as! ThirdViewcell
            if let data = arrrr?.likes?.profiles{
                cell.configuretablecell(with: data)
                print("data yeh lo:\(data)")
            }
            return cell

            
        default:
            break
        }
        return UITableViewCell()
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let section = indexPath.section
        
        switch section{
        case 0 :
            return 450
        case 1:
            return 110
        case 2:
            return 290
        default:
            break
            
        }
        
        return 0
    }
  
    //MARK: API Calling
    func NotesListGetApi(Header:String,url: String){
        
     print("Calling Notes API")
        let hearder:HTTPHeaders=["Authorization":Header]
     
        
      AF.request(url, method: .get, encoding: JSONEncoding.default,headers: hearder)
          .validate(statusCode: 200..<500).responseData { [self] response in
              switch response.result {
              case .failure(let error):
                  print(error)
              case .success(let data):
                  do {
                     
                  
                      self.arrrr = try JSONDecoder().decode(NotesDataModel.self, from: data)
             print("Array:\(String(describing: Array))")
                  } catch { print(error) }
                  
                  DispatchQueue.main.async {
                      self.Tableview.reloadData()
                  }
              }
          }
    }

}


