//
//  AnotherViewController.swift
//  Unowned Self
//
//  Created by shourob datta on 12/16/19.
//  Copyright © 2019 shourov datta. All rights reserved.

import UIKit
class AnotherViewController: UIViewController {
    
    var name : String!
    
    deinit {
        print("Deint AnotherViewController")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(CFGetRetainCount(self))

        /*
            When you test please comment out or vice versa
         
         */
        
        
//        // Should not use unowned here. Because unowned is used where not deallocated. or gurranted object alive. If you immediate click back button app will crash here. Though there will no retain cycles
//        clouser(string: "") { [unowned self] (boolValue)  in
//            self.name = "some"
//        }
//
        
        
        
        
        
        
        
//
//        // There will be a retain cycle. because viewcontroller has a strong refference to this clouser and as well as clouser (self.name) has a strong refferennce to the viewcontroller. Deint AnotherViewController will not print
//        clouser(string: "") { (boolValue)  in
//            self.name = "some"
//        }
//
//
        
        
        
        
        
//        // no retain cycle here. because viewcontroller has a strong refference to this clouser. But clouser (self.name) has a weak refferennce to the viewcontroller. Deint AnotherViewController will  print. As we forcefully made viewcontroller weak so its now optional type. migh be nil. and we added a ? (self?)
//
//        clouser(string: "") { [weak self] (boolValue)  in
//            self?.name = "some"
//        }
        
        
        
        
        
        
        // no retain cycle here. because viewcontroller has a strong refference to this clouser. But clouser nos refference to the viewcontroller. Deint AnotherViewController will  print. As we forcefully made viewcontroller weak so its now optional type. migh be nil. and we added a ? (self?)
        
        clouser(string: "") {  (boolValue)  in
            print("some")
            print(CFGetRetainCount(self))

        }
        
        
        
    }
    

    func clouser(string: String, completion: @escaping (Bool) -> ()) {
        // some heavy task
        
        print(CFGetRetainCount(self))

        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
            completion(true)
        }
        

    }
    

    
}
