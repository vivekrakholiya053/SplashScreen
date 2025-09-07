//
//  Label.swift
//  SplashScreen
//
//  Created by Rakholiya vivek on 07/09/25.
//

import Foundation

import UIKit

@IBDesignable
extension UILabel {
    @IBInspectable var localizeKey: String? {
        get { return nil }
        set(key) {
            if let key = key {
                self.text = key.localized
            }
        }
    }
}
