//
//  SecondViewController.swift
//  SVV
//
//  Created by Kajornsak Peerapathananont on 5/7/2560 BE.
//  Copyright © 2560 Kajornsak Peerapathananont. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var inputTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.navigationItem.title = "Second Page"
    }

    @IBAction func didTapButton(_ sender: Any) {
        let text = inputTextField.text ?? ""
        inputTextField.text = ""
        let alertController = UIAlertController(title: "Alert", message: text, preferredStyle: .alert)
        let actionCancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        let actionOK = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(actionCancel)
        alertController.addAction(actionOK)
        self.present(alertController, animated: true, completion: nil)
    }

}
