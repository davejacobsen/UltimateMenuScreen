//
//  HomeViewController.swift
//  UltimateMenu
//
//  Created by David on 3/7/21.
//

import UIKit

class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpNavBar()
        setAppearance()
     
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        /// must be called to update the appearance when it is changed in the menu since viewDidLoad is only called once
        setAppearance()
    }
    
    func setUpNavBar() {
        
        /// Makes the navigation controller background clear
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.view.backgroundColor = UIColor.clear
    }
    
    func setAppearance() {
        
        /// makes sure this view controller's appearance is synced with the user default value set by the segmented control
        let defaults = UserDefaults.standard
        let appearanceSelection = defaults.integer(forKey: "appearanceSelection")
        
        if appearanceSelection == 0 {
            overrideUserInterfaceStyle = .unspecified
        } else if appearanceSelection == 1 {
            overrideUserInterfaceStyle = .light
        } else {
            overrideUserInterfaceStyle = .dark
        }
    }
    
}
