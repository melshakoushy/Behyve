//
//  ServicesVC.swift
//  Behyve
//
//  Created by Mahmoud Elshakoushy on 31/01/2023.
//

import UIKit

class ServicesVC: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var servicesCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionViews()
    }
}
