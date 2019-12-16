//
//  ViewController.swift
//  Unowned Self
//
//  Created by shourob datta on 12/16/19.
//  Copyright © 2019 shourov datta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "AnotherViewController")
        self.navigationController?.pushViewController(controller, animated: true)

        
    }


}

