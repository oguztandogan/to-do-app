//
//  UIStoryboardExtension.swift
//  CoreDataProject
//
//  Created by Oguz Tandogan on 24.05.2021.
//

import UIKit

extension UIStoryboard {

    func instantiateViewController<T: UIViewController>(ofType _: T.Type, withIdentifier identifier: String? = nil) -> T {
        let identifier = identifier ?? String(describing: T.self)
        return instantiateViewController(withIdentifier: identifier) as! T
    }

}
