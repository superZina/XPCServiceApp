//
//  ViewController.swift
//  XPCServiceApp
//
//  Created by 이진하 on 2022/03/15.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var outputLabel: NSTextField!
    @IBOutlet weak var textField: NSTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func changeUppercase(_ sender: Any) {
        UppercaseUtility.uppercase(textField.stringValue) { text in
            DispatchQueue.main.async {
                self.outputLabel.stringValue = text
            }
        }
    }
}

