//
//  ViewController.swift
//  FirstApp
//
//  Created by Dmitriy Makarov on 05.02.17.
//  Copyright © 2017 YardCapital. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var message: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clickMeTaped(_ sender: Any) {
        message.text = textField.text!
    }
}

