//
//  Storyboarded.swift
//  Behyve
//
//  Created by Mahmoud Elshakoushy on 31/01/2023.
//

import UIKit

protocol Storyboarded {
    static func instantiate() -> Self
}

extension Storyboarded where Self: UIViewController {
    static func instantiate(StoryboardName name: String) -> Self {
        let id = String(describing: self)
        let storyboard = UIStoryboard(name: name, bundle: nil)
        //Forced Typecast is safe here because if your controller's class must always match its storyboard ID
        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
    
    static func instantiate() -> Self {
        let id = String(describing: self)
        let Nib = UINib(nibName: id, bundle: nil)
        return Nib.instantiate(withOwner: nil, options: nil)[0] as! Self
    }
}
