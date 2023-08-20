//
//  PhoneNumberScreen.swift
//  Machinetest
//
//  Created by Manishakumre on 19/08/23.
//

import UIKit

class PhoneNumberScreen: UIViewController {
// MARK: Variable Declaration
    @IBOutlet weak var getotp: UILabel!
   
    @IBOutlet weak var statecd: UITextField!
    
    @IBOutlet weak var Enternumbr: UILabel!
     var viewModel = PhoneNumViewModel()
    
    @IBOutlet weak var numberfield: UITextField!
    
    @IBOutlet weak var continuebtn: UIButton!
    
    
    // MARK: View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        continuebtn.layer.cornerRadius=10
        
    }
    
    // MARK: Action
    @IBAction func nextscreen(_ sender: Any) {
        print("Heloooooooo")
        let number=numberfield.text!
        var url=Constants.baseUrl+"/users/phone_number_login"
        if numberfield.text == "" {
            showAlert(title: "Message", message: "Fields can not be empty")
        } else if let validphone = numberfield.text, validphone.isValidPhone() != true {
            showAlert(title: "Message", message: "Please enter valid mobile number")
        
        } else {
            debugPrint("calling Phone number API")
       
            viewModel.login(number: "+91"+"\(number)", url: url) { [self]result in
                switch result {
                case .success(let response):
                    // Handle successful from API response
                    print("Response: \(response)")
                    
                    let status=response.status ?? nil
                    let sta=status!
                    print(sta)
                    if sta==true{
                        callvc()
                    }else{
                        self.showAlert(title:"", message: "Please Use this Number 9876543212")
                    }
                case .failure(let error):
                    // Handle  failure
                    print("Response error: \(error.localizedDescription)")
                    
                    
                }
                
            }
        }
            
        }
    
    // MARK: Go Next Screen
    func callvc(){
        let nextvc =  self.storyboard?.instantiateViewController(withIdentifier: "OTP_Screen") as! OTP_Screen
        nextvc.modalPresentationStyle = .fullScreen
        self.present(nextvc, animated: true, completion: nil)
    }
    
    // MARK: Pass Data
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let numbr = segue.destination as? OTP_Screen{
            numbr.labelvc = numberfield.text!
        }
        
    }
   
}


    




// MARK: Create Extension
extension String{
    func isValidPhone() -> Bool {
        
        let regex = try! NSRegularExpression(pattern: "^[0-9]\\d{9}$", options: .caseInsensitive)
        let valid = regex.firstMatch(in: self, options: [], range: NSRange(location: 0, length: count)) != nil
        print("Mobile validation \(valid)")
        return valid
    }
}
