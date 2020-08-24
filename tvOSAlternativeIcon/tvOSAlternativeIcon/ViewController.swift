//
//  ViewController.swift
//  tvOSAlternativeIcon
//
//  Created by devarty on 8/25/20.
//

import UIKit


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.loadCurrentAppIcon()
    }
    
    
    
    
    
    // MARK: - App Icon Name
    
    enum AppIconName: String {
        
        case black = "AppIconBlack"
        case green = "AppIconGreen"
    }
    
    
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    
    func loadCurrentAppIcon() {
        
        switch UIApplication.shared.alternateIconName {
        
        case AppIconName.black.rawValue: self.segmentedControl.selectedSegmentIndex = 1
        
        case AppIconName.green.rawValue: self.segmentedControl.selectedSegmentIndex = 2
            
        default: self.segmentedControl.selectedSegmentIndex = 0
        }
    }
    
    
    
    @IBAction func selectedAppIcon(_ segmentedControl: UISegmentedControl) {
        
        switch segmentedControl.selectedSegmentIndex {
        
        case 1: UIApplication.shared.setAlternateIconName(AppIconName.black.rawValue, completionHandler: nil)
            
        case 2: UIApplication.shared.setAlternateIconName(AppIconName.green.rawValue, completionHandler: nil)
            
        default: UIApplication.shared.setAlternateIconName(nil, completionHandler: nil)
        }
    }
}

