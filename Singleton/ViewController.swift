//
//  ViewController.swift
//  Singleton
//
//  Created by tham gia huy on 5/14/18.
//  Copyright © 2018 tham gia huy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    var index: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let indexPath = index {
            textField.text = String(DataService.share.arrayNumber[indexPath])
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func saveData(_ sender: UIBarButtonItem) {
        if let indexPath = index {
            DataService.share.arrayNumber[indexPath] = Int(textField.text ?? "") ?? 0
        } else {
            DataService.share.addNew(from: Int(textField.text ?? "") ?? 0)
        }
        navigationController?.popViewController(animated: true)
    }
}

