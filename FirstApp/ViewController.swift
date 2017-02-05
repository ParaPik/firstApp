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
        textField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clickMeTaped(_ sender: Any) {
        message.text = "Got message: \(textField.text!)"
        textField.resignFirstResponder()
    }
    
    @IBAction func showTaped(_ sender: Any) {
        performSegue(withIdentifier: "ShowSecond", sender: nil)
    }
}

extension ViewController : UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        message.text = "Begin editing"
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        message.text = "End editing"
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        message.text = "Will change '\(string)'"
        return string != "b"
    }
    
}

