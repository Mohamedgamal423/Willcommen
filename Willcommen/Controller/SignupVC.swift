//
//  SignupVC.swift
//  Willcommen
//
//  Created by moh on 5/14/21.
//  Copyright © 2021 moh. All rights reserved.
//

import UIKit
import ConnectyCube

class SignupVC: UIViewController {

    @IBOutlet weak var headview: UIView!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var confirmPassTxt: UITextField!
    //@IBOutlet weak var signupBtn: CustomBtn!
    @IBOutlet weak var signfaceBtn: UIButton!
    @IBOutlet weak var signAppleBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        headview.layer.cornerRadius = 60
        headview.layer.maskedCorners = [.layerMinXMaxYCorner]
        headview.layer.masksToBounds = true
        Gradient.makegradient(grcolors: [#colorLiteral(red: 0.2784313725, green: 0.5607843137, blue: 0.8941176471, alpha: 1), #colorLiteral(red: 0.3607843137, green: 0.8274509804, blue: 0.7764705882, alpha: 1)], view: headview)
        signfaceBtn.makewhitebtn()
        signAppleBtn.makewhitebtn()
    }
    
    @IBAction func signup(_ sender: UIButton) {
        let user = User()
        user.login = emailTxt.text
        user.email = emailTxt.text
        user.password = passwordTxt.text
        Request.signUp(user, successBlock: { (user) in
            print("success signed up with email \(user.email!)")
            Request.logIn(withUserEmail: user.email!, password: user.password!, successBlock: { (logineduser) in
                let tab = self.storyboard?.instantiateViewController(identifier: "tab") as! UITabBarController
                tab.modalPresentationStyle = .fullScreen
                self.present(tab, animated: true, completion: nil)
            }) { (error) in
                print("error logined user\(error.localizedDescription)")
            }
        }) { (error) in
            print("can not signed up user\(error.localizedDescription)")
        }
        
    }
    
    @IBAction func SigninFacebook(_ sender: UIButton) {
        
    }
    
    @IBAction func SigninApple(_ sender: UIButton) {
        
    }
    

    

}
