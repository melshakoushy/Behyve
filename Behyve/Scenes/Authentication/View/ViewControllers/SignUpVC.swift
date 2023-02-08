//
//  SignUpVC.swift
//  Behyve
//
//  Created by Mahmoud Elshakoushy on 08/02/2023.
//

import UIKit

class SignUpVC: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var firstNameTxtField: UITextField!
    @IBOutlet weak var lastNameTxtField: UITextField!
    @IBOutlet weak var mailTxtField: UITextField!
    @IBOutlet weak var passwordTxtField: UITextField!
    @IBOutlet weak var confirmPasswordTxtField: UITextField!
    @IBOutlet weak var passwordEyeBtn: UIButton!
    @IBOutlet weak var confirmPasswordEyeBtn: UIButton!
    @IBOutlet weak var termsBtn: UIButton!
    
    //MARK: - View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Buttons Actions
    @IBAction func passwordEyeBtnPressed(_ sender: Any) {
    }
    
    @IBAction func confirmPasswordEyeBtnPressed(_ sender: Any) {
    }
    
    @IBAction func termsBtnPressed(_ sender: Any) {
    }
    
    @IBAction func signUpBtnPressed(_ sender: Any) {
        let vc = instantiateViewController(viewControllerId: .MobileVC, StoryboardId: .AuthenticationStoryboard)
        navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func fbBtnPressed(_ sender: Any) {
    }
    
    @IBAction func googleBtnPressed(_ sender: Any) {
    }
    
    @IBAction func appleBtnPressed(_ sender: Any) {
    }
    
    @IBAction func signInBtnPressed(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
}
