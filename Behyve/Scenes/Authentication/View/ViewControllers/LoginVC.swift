//
//  LoginVC.swift
//  Behyve
//
//  Created by Mahmoud Elshakoushy on 07/02/2023.
//

import UIKit

class LoginVC: UIViewController {
    
    //MARK: Outlets
    
    @IBOutlet weak var mailTxtField: UITextField!
    @IBOutlet weak var passwordTxtField: UITextField!
    @IBOutlet weak var passwordEyeBtn: UIButton!
    @IBOutlet weak var termsBtn: UIButton!
    
    //MARK: - View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Buttons Actions
    @IBAction func forgetPasswordBtnPressed(_ sender: Any) {
        let vc = instantiateViewController(viewControllerId: .ForgotPasswordVC, StoryboardId: .AuthenticationStoryboard)
        navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func termsBtnPressed(_ sender: Any) {
    }
    
    @IBAction func passwordEyeBtnPressed(_ sender: Any) {
    }
    
    @IBAction func loginBtnPressed(_ sender: Any) {
        let vc =  UIViewController().buildMainTabViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func fbBtnPressed(_ sender: Any) {
    }
    
    @IBAction func googleBtnPressed(_ sender: Any) {
    }
    
    @IBAction func appleBtnPressed(_ sender: Any) {
    }
    
    @IBAction func signUpBtnPressed(_ sender: Any) {
        let vc = instantiateViewController(viewControllerId: .SignUpVC, StoryboardId: .AuthenticationStoryboard)
        navigationController?.pushViewController(vc!, animated: true)
    }
}
