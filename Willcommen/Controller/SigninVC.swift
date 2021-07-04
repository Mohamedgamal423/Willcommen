//
//  SigninVC.swift
//  Willcommen
//
//  Created by moh on 5/16/21.
//  Copyright © 2021 moh. All rights reserved.
//

import UIKit
import ConnectyCube

class SigninVC: UIViewController {

    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func signinBtn(_ sender: UIButton) {
        Request.logIn(withUserEmail: emailTxt.text!, password: passwordTxt.text!, successBlock: { (user) in
            let tab = self.storyboard?.instantiateViewController(identifier: "tab") as! UITabBarController
            tab.modalPresentationStyle = .fullScreen
            self.present(tab, animated: true, completion: nil)
        }) { (error) in
            print("can not log in user due to \(error.localizedDescription)")
        }
    }
    
    @IBAction func SigninFacebook(_ sender: UIButton) {
        
    }
    
    @IBAction func SigninApple(_ sender: UIButton) {
        
    }
    
    @IBAction func Signup(_ sender: UIButton) {
        let signup = self.storyboard?.instantiateViewController(identifier: "up") as! SignupVC
        signup.modalPresentationStyle = .fullScreen
        self.present(signup, animated: true, completion: nil)
        
    }
    
    @IBAction func retrievePass(_ sender: UIButton) {
        
    }
    

}
