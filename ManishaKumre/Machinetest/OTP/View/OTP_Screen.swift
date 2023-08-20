//
//  OTP Screen.swift
//  Machinetest
//
//  Created by Manishakumre on 19/08/23.
//

import UIKit
var Token:String=""
class OTP_Screen: UIViewController {
//MARK: Variable declaration
    
    @IBOutlet weak var numbrlbl: UILabel!
  
    @IBOutlet weak var otplbl: UILabel!
    
    @IBOutlet weak var otpfield: UITextField!
    
   
    @IBOutlet weak var contibtn: UIButton!
    var labelvc=String()
    
    @IBOutlet weak var timer: UILabel!
    
    var countdownTimer: Timer!
    var totalTime=00
    
    private var viewModel = OTPViewModel()
    
    //MARK: View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        contibtn.layer.cornerRadius=10
        startTimer(time: totalTime ?? 0)
        numbrlbl.text = "+91"+labelvc
       
    }
    
    //MARK: Actions
    @IBAction func edit(_ sender: Any) {
        editvc()
    }
    
    @IBAction func contibtn(_ sender: Any) {
        print("Heloooooooo")
        let otp=otpfield.text!
        let number=numbrlbl!
        let fotp = "1234"
        var url=Constants.baseUrl+"/users/verify_otp"
        
        if otpfield.text == ""{
            showAlert(title: "Message", message: "Fields can not be empty")
        }else if otpfield.text != fotp{
            showAlert(title: "Message", message: "Please enter valid OTP ")
            
        }else{
            debugPrint("calling OTP api")
            viewModel.OTPVerify(parameters: ["number":"+91"+"\(9876543212)","otp":"\(otp)"], url: url){ [self]result in
                switch result {
                case .success(let response):
                    // Handle successful login response
                    print("Login successful: \(response)")
                    
                    let token=response.token ?? ""
                    Token=token
                    print(token)
                    callvc()
                    
                case .failure(let error):
                    // Handle login failure
                    print("Login error: \(error.localizedDescription)")
              }
                
            }
            
        }
        
    }
    
    //MARK: Go Next Screen
    func editvc(){
        let nextvc =  self.storyboard?.instantiateViewController(withIdentifier: "PhoneNumberScreen") as! PhoneNumberScreen
        nextvc.modalPresentationStyle = .fullScreen
        self.present(nextvc, animated: true, completion: nil)
    }
    
    
    func callvc(){
        let nextvc =  self.storyboard?.instantiateViewController(withIdentifier: "NotesScreen") as! NotesScreen
        nextvc.modalPresentationStyle = .fullScreen
        self.present(nextvc, animated: true, completion: nil)
    }
   
 
    //MARK: Verfication Timer
    private func startTimer(time:Int) {
        totalTime =  60

        countdownTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
    }
    
    @objc func updateTime() {
        totalTime -= 1
        timer.text = "\(timeFormatted(totalTime ))"
        
        if totalTime == 0{
            endTimer()
                }
    }
    
    private func endTimer() {
        countdownTimer.invalidate()
        countdownTimer = nil
    }
    
    private func timeFormatted(_ totalSeconds: Int) -> String {
        let seconds: Int = totalSeconds % 60
        let minutes: Int = (totalSeconds / 60) % 60
        return String(format: "%02d:%02d", minutes, seconds)
    }
}


