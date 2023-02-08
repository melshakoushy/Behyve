//
//  ForgotPasswordVC.swift
//  Behyve
//
//  Created by Mahmoud Elshakoushy on 08/02/2023.
//

import UIKit

class ForgotPasswordVC: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var mailTxtField: UITextField!
    
    //MARK: - View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Buttons Actions
    
    @IBAction func sendBtnPressed(_ sender: Any) {
        let vc = instantiateViewController(viewControllerId: .ConfirmationVC, StoryboardId: .AuthenticationStoryboard)
        navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func sendAgainBtnPressed(_ sender: Any) {
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
