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
    var pass = ""
    @IBOutlet weak var paswordField: UILabel! {
        didSet {
            if paswordField == nil {
                print("Label set to nil!")
                // ^ SET A BREAKPOINT IN THIS LINE
            } else {
                print("label not nil")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //NotificationCenter.default.addObserver(self, selector: #selector(self.updateLabel), name: NSNotification.Name(rawValue: "updatePass"), object: nil)
        
        //retrieving for group
        
        let userDefaults = UserDefaults(suiteName: "group.com.mobilex")
        if let testUserId = userDefaults?.object(forKey: "DynamicVector") as? String {
            print("User Id: \(testUserId)")
            
            //saving in keychain
            KeychainService.updatePassword(service: service, account: account, data: testUserId)
            
        }
        
        //retrieving from keychain
        pass = KeychainService.loadPassword(service: service, account: account) ?? "error"
        
        DispatchQueue.main.async {
            self.paswordField.text = self.pass
        }
        
    }

 

}


