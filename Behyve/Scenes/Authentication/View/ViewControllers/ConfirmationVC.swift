//
//  ConfirmationVC.swift
//  Behyve
//
//  Created by Mahmoud Elshakoushy on 08/02/2023.
//

import UIKit

class ConfirmationVC: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var confirmationTxtField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Buttons Actions
    @IBAction func confirmationBtnPressed(_ sender: Any) {
    }
    
    @IBAction func sendAgainBtnPressed(_ sender: Any) {
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
