//
//  AppDelegate.swift
//  Behyve
//
//  Created by Mahmoud Elshakoushy on 31/01/2023.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    override init() {
        super.init()
        UIFont.overrideInitialize()
    }
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        setupView()
        return true
    }
    
    // MARK: UISceneSession Lifecycle
    
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
}


extension AppDelegate {
    //    func setupView() {
    //        let backImage = UIImage(named: "back")?.withRenderingMode(.alwaysOriginal)
    //        UINavigationBar.appearance().backIndicatorImage = backImage
    //        UINavigationBar.appearance().backIndicatorTransitionMaskImage = backImage
    //        let barBtn = UIBarButtonItem(title: " ", style: .plain, target: nil, action: nil)
    //        let BarButtonItemAppearance = UIBarButtonItem.appearance()
    //        BarButtonItemAppearance.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.clear], for: .normal)
    //        BarButtonItemAppearance.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.clear], for: .highlighted)
    //        BarButtonItemAppearance.setBackButtonBackgroundImage(backImage, for: .normal, barMetrics: .default)
    //        BarButtonItemAppearance.setBackButtonTitlePositionAdjustment(UIOffset(horizontal: -200, vertical: 0), for:UIBarMetrics.default)
    //        UINavigationBar.appearance().backItem?.backBarButtonItem = barBtn
    //    }
    
    func setupView() {
        let backImage = UIImage(named: "back")?.withRenderingMode(.alwaysOriginal)
        UINavigationBar.appearance().backIndicatorImage = backImage
        UINavigationBar.appearance().backIndicatorTransitionMaskImage = backImage
        UINavigationBar.appearance().shadowImage = UIImage()
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
        let barBtn = UIBarButtonItem(title: " ", style: .plain, target: nil, action: nil)
        barBtn.tintColor = .black
        UINavigationBar.appearance().backItem?.backBarButtonItem = barBtn
        let navigationBarAppearance = UINavigationBarAppearance()
        navigationBarAppearance.configureWithTransparentBackground()
        navigationBarAppearance.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor : UIColor.black,
            NSAttributedString.Key.font: UIFont.appFont(ofSize: 22, weight: .PPRightGroteskTextWideBold)
        ]
        navigationBarAppearance.backgroundColor = ColorManager.AppStaticColors.greyBackground
        UINavigationBar.appearance().standardAppearance = navigationBarAppearance
        UINavigationBar.appearance().compactAppearance = navigationBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navigationBarAppearance
        
        let BarButtonItemAppearance = UIBarButtonItem.appearance()
        BarButtonItemAppearance.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.clear], for: .normal)
        BarButtonItemAppearance.setBackButtonTitlePositionAdjustment(UIOffset(horizontal: -200, vertical: 0), for:UIBarMetrics.default)
        let tabBarApperance = UITabBarAppearance()
        tabBarApperance.configureWithOpaqueBackground()
        tabBarApperance.backgroundColor = UIColor.white
        UITabBar.appearance().tintColor = ColorManager.AppStaticColors.lightOrange
        UITabBar.appearance().scrollEdgeAppearance = tabBarApperance
        UITabBar.appearance().standardAppearance = tabBarApperance
        UITabBar.appearance().masksToBounds = true
    }
    
    func setRoot() {
        window = UIWindow()
        window?.makeKeyAndVisible()
        //        if PersistentDataHelper.shared.didLaunchBefore {
        //            if PersistentDataHelper.shared.isLoggedIn {
        //                let vc =  UIViewController().buildMainTabViewController()
        //                window?.rootViewController = vc
        //            } else {
        //                let loginVC = UIViewController.instantiateViewController(viewControllerId: .LoginNavBarVC, StoryboardId: .AuthenticationStoryboard)
        //                window?.rootViewController = loginVC
        //            }
        //        } else {
        let vc = UIViewController.instantiateViewController(viewControllerId: .OnBoardingVC, StoryboardId: .OnBoardingStoryboard) as! OnBoardingVC
        window?.rootViewController = vc
        //        }
    }
}
