//
//  UIViewController+Extensions.swift
//  Behyve
//
//  Created by Mahmoud Elshakoushy on 31/01/2023.
//

import UIKit
import MBProgressHUD
import SVProgressHUD

extension UIViewController: Storyboarded {
    func instantiateViewController(viewControllerId: ViewControllerID, StoryboardId: StoryboardID) -> UIViewController? {
        let storyboard = UIStoryboard(name: StoryboardId.rawValue, bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: viewControllerId.rawValue)
        return controller
    }
    
    class func instantiateViewController(viewControllerId: ViewControllerID, StoryboardId: StoryboardID) -> UIViewController? {
        let storyboard = UIStoryboard(name: StoryboardId.rawValue, bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: viewControllerId.rawValue)
        return controller
    }
    
    func buildMainTabViewController() -> UIViewController {
        let tabBarViewContrller = MainTabBarController()
        return tabBarViewContrller
    }
    
    func showIndicator(withTitle title: String, and description: String) {
        let indicator = MBProgressHUD.showAdded(to: self.view, animated: true)
        indicator.label.text = title
        indicator.isUserInteractionEnabled = false
        indicator.detailsLabel.text = description
        indicator.show(animated: true)
        self.view.isUserInteractionEnabled = false
    }
    func hideIndicator() {
        MBProgressHUD.hide(for: self.view, animated: true)
        self.view.isUserInteractionEnabled = true
    }
    
    func showMessage(message: String, width: Int) {
        SVProgressHUD.showSuccess(withStatus: message)
        SVProgressHUD.setOffsetFromCenter(UIOffset(horizontal: 200, vertical: 100))
        SVProgressHUD.setMinimumSize(CGSize(width: width, height: 80))
        SVProgressHUD.dismiss(withDelay: 2)
    }
    
    
    func AlertMessage(title: String, userMessage: String, messageColor: UIColor = .black, complition: (() -> Void)? = nil) {
        let attributedString = NSAttributedString(string: userMessage, attributes: [
            NSAttributedString.Key.foregroundColor: messageColor,
        ])
        let alert = UIAlertController(title: title, message: userMessage, preferredStyle: UIAlertController.Style.alert)
        alert.setValue(attributedString, forKey: "attributedMessage")
        let okAction = UIAlertAction(title: NSLocalizedString("Ok", comment: ""), style: UIAlertAction.Style.default, handler: { _ in
            complition?()
        })
        
        okAction.setValue(ColorManager.AppStaticColors.lightOrange, forKey: "titleTextColor")
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
    
    func AlertMessageWithCancel(title: String, userMessage: String, messageColor: UIColor = .black, complition: (() -> Void)? = nil) {
        let attributedString = NSAttributedString(string: userMessage, attributes: [
            NSAttributedString.Key.foregroundColor: messageColor,
        ])
        let alert = UIAlertController(title: title, message: userMessage, preferredStyle: UIAlertController.Style.alert)
        alert.setValue(attributedString, forKey: "attributedMessage")
        let okAction = UIAlertAction(title: NSLocalizedString("Ok", comment: ""), style: UIAlertAction.Style.default, handler: { _ in
            complition?()
        })
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        
        okAction.setValue(ColorManager.AppStaticColors.lightOrange, forKey: "titleTextColor")
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        present(alert, animated: true, completion: nil)
    }
    
    func setRoot(ViewController vc: UIViewController, animated: Bool) {
        guard let window = UIApplication.shared.connectedScenes
                .filter({$0.activationState == .foregroundActive})
                .compactMap({$0 as? UIWindowScene})
                .first?.windows
                .filter({$0.isKeyWindow}).first  else {
                    return
                }
//        guard let window = UIApplication.shared.keyWindow else {
//            return
//        }
        window.rootViewController = vc
        if animated {
            let options: UIView.AnimationOptions = [.transitionCrossDissolve, .allowUserInteraction]
            let duration: TimeInterval = 0.3
            UIView.transition(with: window, duration: duration, options: options, animations: {}, completion: { _ in
                // maybe do something on completion here
            })
        }
    }
}


// MARK: - Create loder view

//private let spinnerTag = 101010101014510
//extension UIViewController {
//    func showSpinner(onView: UIView, backColor: UIColor = UIColor.black.withAlphaComponent(0)) {
//        let spinnerView = UIView(frame: onView.bounds)
//        spinnerView.backgroundColor = backColor
//        //
//        let blurEffect = UIBlurEffect(style: UIBlurEffect.Style.dark)
//        let blurEffectView = UIVisualEffectView(effect: blurEffect)
//        blurEffectView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
//        blurEffectView.cornerRadius = 10
//        blurEffectView.clipsToBounds = true
//        blurEffectView.center = spinnerView.center
//        spinnerView.addSubview(blurEffectView)
//        //
//        var ai = UIActivityIndicatorView()
//        if #available(iOS 13, *) {
//            ai = UIActivityIndicatorView(style: UIActivityIndicatorView.Style.large)
//        } else {
//            ai = UIActivityIndicatorView(style: .whiteLarge)
//        }
//        ai.color = .white
//        ai.startAnimating()
//        ai.center = spinnerView.center
//
//        DispatchQueue.main.async {
//            spinnerView.addSubview(ai)
//            onView.addSubview(spinnerView)
//        }
//
//        spinnerView.tag = spinnerTag
//    }
//
//    func removeSpinner(fromView: UIView) {
//        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.1) {
//            var loader: UIView? = fromView.viewWithTag(spinnerTag)
//            UIView.animate(withDuration: 0.2, animations: {
//                loader?.alpha = 0
//            }, completion: { _ in
//                loader?.removeFromSuperview()
//                loader = nil
//            })
//        }
//    }
//}
