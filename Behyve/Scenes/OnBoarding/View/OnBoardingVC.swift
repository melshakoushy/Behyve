//
//  OnBoardingVC.swift
//  Behyve
//
//  Created by Mahmoud Elshakoushy on 04/02/2023.
//

import UIKit

enum OnboardingPages {
    case first
    case second
    case third
}

class OnBoardingVC: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var skipBtn: UIButton!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var progressTitleLbl: UILabel!
    @IBOutlet weak var progressDescLbl: UILabel!
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    enum titles: String {
        case Community
        case Quality
        case Trust
    }
    
    enum imageNames: String {
        case QualityOnboarding
        case TrustOnboarding
    }
    //MARK: - Properties
    var page: OnboardingPages = .first
    
    //MARK: - View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    //MARK: - Private Methods
    private func setupView() {
        nextBtn.addHorizontalGradient()
        switch page {
        case .first:
            titleLbl.text = titles.Community.rawValue
            mainImg.image = UIImage(named: imageNames.QualityOnboarding.rawValue)
            backBtn.isHidden = true
            progressTitleLbl.text = "The First"
            progressDescLbl.text = "1 Of 3"
            progressView.progress = 0.3
            nextBtn.setTitle("Next", for: .normal)
        case .second:
            titleLbl.text = titles.Quality.rawValue
            mainImg.image = UIImage(named: imageNames.QualityOnboarding.rawValue)
            backBtn.isHidden = false
            progressTitleLbl.text = "The Second"
            progressDescLbl.text = "2 Of 3"
            UIView.animate(withDuration: 0.5, delay: 0, options: [], animations: { [weak self] in
                guard let self = self else { return }
                self.progressView.progress = 0.7
                self.progressView.layoutIfNeeded()
            })
            nextBtn.setTitle("Next", for: .normal)
        case .third:
            titleLbl.text = titles.Trust.rawValue
            mainImg.image = UIImage(named: imageNames.TrustOnboarding.rawValue)
            backBtn.isHidden = false
            progressTitleLbl.text = "The Third"
            progressDescLbl.text = "3 Of 3"
            UIView.animate(withDuration: 0.5, delay: 0, options: [], animations: { [weak self] in
                guard let self = self else { return }
                self.progressView.progress = 1
                self.progressView.layoutIfNeeded()
            })
            nextBtn.setTitle("Sign In", for: .normal)
        }
    }
    
    //MARK: - Buttons Actions
    @IBAction func skipBtnPressed(_ sender: Any) {
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        if page == .second {
            page = .first
        } else if page == .third {
            page = .second
        }
        setupView()
    }
    
    @IBAction func nextBtnPressed(_ sender: Any) {
        if page == .first {
            page = .second
        } else if page == .second {
            page = .third
        }
        setupView()
    }
}
