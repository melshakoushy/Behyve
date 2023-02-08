//
//  MobileVC.swift
//  Behyve
//
//  Created by Mahmoud Elshakoushy on 08/02/2023.
//

import UIKit

class MobileVC: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var phoneNumberTxtField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Buttons Actions
    
    @IBAction func sendOtpBtnPressed(_ sender: Any) {
        let vc = instantiateViewController(viewControllerId: .ConfirmationVC, StoryboardId: .AuthenticationStoryboard)
        navigationController?.pushViewController(vc!, animated: true)
    }
}
