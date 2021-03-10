//
//  UIApplicationExtension.swift
//  UltimateMenu
//
//  Created by David on 3/7/21.
//

import UIKit

/// Used to display the app version in the menu and gets attached to feedback emails

extension UIApplication {
    static var appVersion: String? {
        return Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String
    }
}
