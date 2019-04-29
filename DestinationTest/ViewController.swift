//
//  ViewController.swift
//  DestinationTest
//
//  Created by Jair Moreno Gaspar on 4/24/19.
//  Copyright © 2019 Jair Moreno Gaspar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    let service = "myService"
    let account = "myAccount"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        //retrieving for group
        
        let userDefaults = UserDefaults(suiteName: "group.com.mobilex")
        if let testUserId = userDefaults?.object(forKey: "DynamicVector") as? String {
            print("User Id: \(testUserId)")
            
            //saving in keychain
            KeychainService.savePassword(service: service, account: account, data: testUserId)
            
        }
        
        
        
        
        
        //retrieving from keychain
        let pass = KeychainService.loadPassword(service: service, account: account)
        print("Retrieve pass \(pass)")
        
        
    }


}


