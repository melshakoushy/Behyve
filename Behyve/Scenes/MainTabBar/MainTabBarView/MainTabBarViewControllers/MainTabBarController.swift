//
//  MainTabBarController.swift
//  Behyve
//
//  Created by Mahmoud Elshakoushy on 31/01/2023.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    // MARK: - view life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
}

// MARK: - setupUI
extension MainTabBarController: UITabBarControllerDelegate {
    private func setupUI() {
        setTabBarItems()
        setTabBarAppearance()
    }
    
    override func viewWillLayoutSubviews() {
     super.viewWillLayoutSubviews()
        tabBar.roundCorners(corners: [.topLeft, .topRight], radius: 25)
 }
    
    func setTabBarItems() {
        let homeVC = UIViewController.instantiateViewController(viewControllerId: .HomeNavVC, StoryboardId: .HomeStoryboard)!
        homeVC.tabBarItem.image = UIImage(named: "HomeUnselected")?.withRenderingMode(.alwaysTemplate)
        homeVC.tabBarItem.selectedImage = UIImage(named: "HomeSelected")?.withRenderingMode(.alwaysOriginal)
        homeVC.tabBarItem.title = "Home"
        
        let servicesVC = UIViewController.instantiateViewController(viewControllerId: .ServicesNavVC, StoryboardId: .ServicesStoryboard)!
        servicesVC.tabBarItem.image = UIImage(named: "ServicesUnselected")?.withRenderingMode(.alwaysTemplate)
        servicesVC.tabBarItem.selectedImage = UIImage(named: "ServicesSelected")?.withRenderingMode(.alwaysOriginal)
        servicesVC.tabBarItem.title = "Services"
        
        let eventsVC = UIViewController.instantiateViewController(viewControllerId: .EventsNavVC, StoryboardId: .EventsStoryboard)!
        eventsVC.tabBarItem.image = UIImage(named: "EventsUnselected")?.withRenderingMode(.alwaysTemplate)
        eventsVC.tabBarItem.selectedImage = UIImage(named: "EventsSelected")?.withRenderingMode(.alwaysOriginal)
        eventsVC.tabBarItem.title = "Events"
        
        let moreVC = UIViewController.instantiateViewController(viewControllerId: .MoreNavVC, StoryboardId: .MoreStoryboard)!
        moreVC.tabBarItem.image = UIImage(named: "MoreUnselected")?.withRenderingMode(.alwaysTemplate)
        moreVC.tabBarItem.selectedImage = UIImage(named: "MoreSelected")?.withRenderingMode(.alwaysOriginal)
        moreVC.tabBarItem.title = "More"
        
        viewControllers = [homeVC, servicesVC, eventsVC, moreVC]
    }
    
    func setTabBarAppearance() {
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.gray, NSAttributedString.Key.font: UIFont.systemFont(ofSize: 10)], for: .normal)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: ColorManager.AppStaticColors.lightOrange, NSAttributedString.Key.font: UIFont.systemFont(ofSize: 10)]  , for: .selected)
    }
}
