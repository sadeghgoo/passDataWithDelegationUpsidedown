//
//  SecondViewController.swift
//  PassDataWithDelegationUpsideDown
//
//  Created by sadegh on 7/8/19.
//  Copyright © 2019 sadegh. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,PassData {
    
    func pass(str: String) {
        label.text = str
    }
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

  
    }
    
}
