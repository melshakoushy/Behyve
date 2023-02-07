//
//  Constants.swift
//  Behyve
//
//  Created by Mahmoud Elshakoushy on 01/02/2023.
//

import Foundation

// MARK: - Storyboard ID

enum StoryboardID: String {
    case HomeStoryboard
    case ServicesStoryboard
    case EventsStoryboard
    case MoreStoryboard
    case OnBoardingStoryboard
    case AuthenticationStoryboard
}

// MARK: - ViewController ID

enum ViewControllerID: String {
    case HomeVC
    case HomeNavVC
    case ServicesVC
    case ServicesNavVC
    case EventsVC
    case EventsNavVC
    case MoreVC
    case MoreNavVC
    case OnBoardingVC
    case LoginVC
    case NavLoginVC
}

class UserDefaultsKeys {
    static let didLaunchBefore = "DID_LAUNCH_BEFORE"
}

enum keychainWrapperKeys: String {
    case sessionId
    case isLoggedIn
    case user
    case accessToken
    case refreshToken
    case ecommerce
    case cartId
    case profileImgUrl
}

enum EmtyViewsMessages: String {
    case main = "لا يوجد"
}

enum ImageNames: String {
    case checked = "checklist_active"
    case unchecked = "remember_me_inactive"
}

enum FontName {
    case PPRightGroteskTextWideBold
    case PPRightGroteskTextWideBoldItalic
    case PPRightGroteskTextWideLight
    case PPRightGroteskTextWideLightItalic
    case PPRightGroteskTextWideMedium
    case PPRightGroteskTextWideMediumItalic
    case PPRightGroteskTextWideRegular
    case PPRightGroteskTextWideRegularItalic
}

enum ErrorMessages: String {
    case NoInternetConnection = "No Internet Connection!"
    case ServerError = "Server Error!"
    case NameError = "Please enter a correct name"
    case DataCorrectError = "Please make sure to enter correct info"
    case PhoneNumberError = "Please enter a correct phone number"
    case CorrectMail = "Please enter a correct email"
    case CorrectOtp = "Please make sure to enter the otp first"
    case VariantError = "You need to choose the product size from the details first"
}

enum SuccessMessages: String {
    case AddedToCart = "Product added to cart successfully"
    case NoCartYet = "Make sure to add products to the cart first"
    case DeletedFromCart = "Product deleted from cart successfully"
    case ImgUploaded = "Your profile image uploaded successfully"
}
