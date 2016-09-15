//
//  ViewController.swift
//  SimpleBase
//
//  Created by Adi Nugroho on 9/14/16.
//  Copyright © 2016 Adi Nugroho. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    let _ref = FIRDatabase.database().reference()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let condition = _ref.child("listName")
        condition.observe(.value) { (snapshot: FIRDataSnapshot) in
            print((snapshot.value as AnyObject).description)
        }
    }
}

