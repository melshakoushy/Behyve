//
//  HomeVC.swift
//  Behyve
//
//  Created by Mahmoud Elshakoushy on 31/01/2023.
//

import UIKit

class HomeVC: UIViewController {
    
    //MARK: Outlets

    @IBOutlet weak var welcomeView: UIView!
    @IBOutlet weak var helloLbl: UILabel!
    @IBOutlet weak var descLbl: UILabel!
    @IBOutlet weak var reservationBtn: UIButton!
    @IBOutlet weak var categoriesCollectionView: UICollectionView!
    @IBOutlet weak var topProvidersCollectionView: UICollectionView!
    @IBOutlet weak var providersCollectionView: UICollectionView!
    @IBOutlet weak var eventsTypesCollectioView: UICollectionView!
    @IBOutlet weak var eventsCollectionView: UICollectionView!
    
    //MARK: - View LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionViews()
    }
    
    //MARK: - Buttons Actions
    
    @IBAction func reservationBtnPressed(_ sender: Any) {
    }
    
    @IBAction func categoriesSeeAllBtnPressed(_ sender: Any) {
    }
    
    @IBAction func providersBtnPressed(_ sender: Any) {
    }
    
    @IBAction func eventsSeeAllBtnPressed(_ sender: Any) {
    }
}
