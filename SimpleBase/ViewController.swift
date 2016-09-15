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

    @IBOutlet weak var txtTitle: UILabel!
    @IBOutlet weak var editTitle: UITextField!
    
    let _ref = FIRDatabase.database().reference()
    
    var condition: FIRDatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        condition = _ref.child("title")
        condition.observe(.value) { [unowned self] (snapshot: FIRDataSnapshot) in
            self.txtTitle.text = snapshot.value as? String
        }
    }
    
    @IBAction func onBtnSyncClicked(_ sender: UIButton) {
        condition.setValue(editTitle.text)
    }
}

