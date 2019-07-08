//
//  ViewController.swift
//  PassDataWithDelegationUpsideDown
//
//  Created by sadegh on 7/8/19.
//  Copyright © 2019 sadegh. All rights reserved.
//

import UIKit

protocol PassData {
    func pass(str:String)
    
}

class ViewController: UIViewController {

    @IBOutlet weak var txtfield: UITextField!
    var delegate:PassData?
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnTapped(_ sender: Any) {
        
        performSegue(withIdentifier: "second", sender: self)
        delegate?.pass(str: txtfield.text!)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let target = segue.destination as? SecondViewController{
            self.delegate = target
        }
        
        
    }
    
    
}

