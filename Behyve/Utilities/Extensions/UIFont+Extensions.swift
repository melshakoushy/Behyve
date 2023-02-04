//
//  UIFont+Extensions.swift
//  Behyve
//
//  Created by Mahmoud Elshakoushy on 04/02/2023.
//

import UIKit

extension UIFont {
    
    static func appFont(ofSize size: CGFloat, weight: FontName) -> UIFont {
        let fontName: String
        switch weight {
        case .PPRightGroteskTextWideBold: fontName = "PPRightGroteskText-WideBold"
        case .PPRightGroteskTextWideBoldItalic: fontName = "PPRightGroteskText-WideBoldItalic"
        case .PPRightGroteskTextWideLight: fontName = "PPRightGroteskText-WideLight"
        case .PPRightGroteskTextWideLightItalic: fontName = "PPRightGroteskText-WideLightItalic"
        case .PPRightGroteskTextWideMedium: fontName = "PPRightGroteskText-WideMedium"
        case .PPRightGroteskTextWideMediumItalic: fontName = "PPRightGroteskText-WideMediumItalic"
        case .PPRightGroteskTextWideRegular: fontName = "PPRightGroteskText-WideRegular"
        case .PPRightGroteskTextWideRegularItalic: fontName = "PPRightGroteskText-WideRegularItalic"
        }
        return UIFont(name: fontName, size: size)!
    }
}

struct AppFontName {
    static let regular = "PPRightGroteskText-WideRegular"
    static let bold = "PPRightGroteskText-WideBold"
    static let italic = "PPRightGroteskText-WideBoldItalic"
    static let medium = "PPRightGroteskText-WideMedium"
}

extension UIFont {
    
    @objc class func mySystemFont(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: AppFontName.regular, size: size)!
    }
    
    @objc class func myBoldSystemFont(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: AppFontName.bold, size: size)!
    }
    
    @objc class func myItalicSystemFont(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: AppFontName.italic, size: size)!
    }
    
    @objc convenience init(myCoder aDecoder: NSCoder) {
        if let fontDescriptor = aDecoder.decodeObject(forKey: "UIFontDescriptor") as? UIFontDescriptor {
            if let fontAttribute = fontDescriptor.fontAttributes[UIFontDescriptor.AttributeName(rawValue: "NSCTFontUIUsageAttribute")] as? String {
                var fontName = ""
                switch fontAttribute {
                case "CTFontRegularUsage":
                    fontName = AppFontName.regular
                case "CTFontEmphasizedUsage", "CTFontBoldUsage":
                    fontName = AppFontName.bold
                case "CTFontObliqueUsage":
                    fontName = AppFontName.italic
                case "CTFontHeavyUsage":
                    fontName = AppFontName.bold
                    
                default:
                    fontName = AppFontName.regular
                }
                self.init(name: fontName, size: fontDescriptor.pointSize)!
            } else {
                self.init(myCoder: aDecoder)
            }
        } else {
            self.init(myCoder: aDecoder)
        }
    }
    
    class func overrideInitialize() {
        if self == UIFont.self {
            let systemFontMethod = class_getClassMethod(self, #selector(systemFont(ofSize:)))
            let mySystemFontMethod = class_getClassMethod(self, #selector(mySystemFont(ofSize:)))
            method_exchangeImplementations(systemFontMethod!, mySystemFontMethod!)
            
            let boldSystemFontMethod = class_getClassMethod(self, #selector(boldSystemFont(ofSize:)))
            let myBoldSystemFontMethod = class_getClassMethod(self, #selector(myBoldSystemFont(ofSize:)))
            method_exchangeImplementations(boldSystemFontMethod!, myBoldSystemFontMethod!)
            
            let italicSystemFontMethod = class_getClassMethod(self, #selector(italicSystemFont(ofSize:)))
            let myItalicSystemFontMethod = class_getClassMethod(self, #selector(myItalicSystemFont(ofSize:)))
            method_exchangeImplementations(italicSystemFontMethod!, myItalicSystemFontMethod!)
            
            let initCoderMethod = class_getInstanceMethod(self, #selector(UIFontDescriptor.init(coder:))) // Trick to get over the lack of UIFont.init(coder:))
            let myInitCoderMethod = class_getInstanceMethod(self, #selector(UIFont.init(myCoder:)))
            method_exchangeImplementations(initCoderMethod!, myInitCoderMethod!)
        }
    }
}
