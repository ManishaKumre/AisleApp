//
//  ViewController.swift
//  Machinetest
//
//  Created by Manishakumre on 18/08/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

/*
 // MARK: About This App
 
 In this App
 ## 🌟 Features
 
 * Easy to use
 * All UIViews are skeletonables
 * Fully customizable
 * Universal (iPhone & iPad)
 * Interface Builder friendly
 * Simple Swift syntax
 * Lightweight readable codebase
 
 
 ## 🎬 Guides
 
 |Base URL: https://app.aisle.co/V1
 Name: Phone number API
 Method: POST
 End Point:  /users/phone_number_login
 Parameter: {'number' = "+919876543212"}
 
 
 Name: OTP API
 End Point: /users/verify_otp
 Method: POST
 Parameter: {'number' = "+919876543212", 'otp' => "1234"}
 
 
 Name: Notes API
 Method: GET
 End Point: /users/test_profile_list
 Header: {'Authorization' = ‘auth_token"
 
 |:---:  | :---:  | :---: | :---:
 
 
 
 ## 📲 Installation
 * [Alamofire]
 
 
 ## 🐒 Usage
 Screen 1: Enter +91 in the country code field and 9876543212 in the phone number field and click on the Continue button. While clicking on the Continue button make a Phone number API call, Once you get success response then take the user to Screen 2.
 
 Screen 2: Enter 1234 in the OTP field and click on the Continue button. While clicking on the Continue button, make an OTP API call, You will receive an auth token in the API success response then take the user to Screen 3.
 
 Screen 3: Add auth token in the header while making Notes API call.
 
 
 
 **UICollectionView**

 If you want to show the Machinetest in a ```UICollectionView```, you need to conform to ```UICollectionViewDataSource``` protocol.

 ``` swift
 public protocol CollectionViewDataSource: UICollectionViewDataSource {
     func numSections(in collectionView: UIcollectionView) -> Int // Default: 1
     func collectionView(_View: UIcollectionView, numberOfRowsInSection section: Int) -> Int
     func collectionView(_ View: UIcollectionView, cellIdentifierForRowAt indexPath: IndexPath) -> ReusableCellIdentifier
     func collectionView(_ collectionView: UIcollectionView, CellForRowAt indexPath: IndexPath) -> UITableViewCell? // Default: nil
    
 }
 ```
 As you can see, this protocol inherits from ```UICollectionViewDataSource```,
 This protocol has a default implementation for some methods. For example, the number of rows for each section is calculated in runtime:

 

 **UITableView**

 If you want to show the Machinetest in a ```UITableView```, you need to conform to ```TableViewDataSource``` protocol.

 ``` swift
 public protocol UITableViewDataSource: UITableViewDataSource {
     func numSections(in tableView: UITableView) -> Int // Default: 1
     func tableView(_View: tableView, numberOfRowsInSection section: Int) -> Int
     func tableView(_ View: tableView, cellIdentifierForRowAt indexPath: IndexPath) -> ReusableCellIdentifier
     func tableView(_ tableView: UITableView, CellForRowAt indexPath: IndexPath) -> UITableViewCell? // Default: nil
    
 }
 ```
 As you can see, this protocol inherits from ```UITableViewDataSource```,
 This protocol has a default implementation for some methods. For example, the number of rows for each section is calculated in runtime:

 
 **Supported OS & SDK Versions**

 * iOS 13.0+
 * Swift 5.3


 ## 👨🏻‍💻 Author

 [Manisha Kumre]

 
*/
