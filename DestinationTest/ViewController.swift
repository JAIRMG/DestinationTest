//
//  ViewController.swift
//  DestinationTest
//
//  Created by Jair Moreno Gaspar on 4/24/19.
//  Copyright © 2019 Jair Moreno Gaspar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        let userDefaults = UserDefaults(suiteName: "group.com.mobilex")
        if let testUserId = userDefaults?.object(forKey: "DynamicVector") as? String {
            print("User Id: \(testUserId)")
        }
        
    }


}


