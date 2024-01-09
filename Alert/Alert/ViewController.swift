//
//  ViewController.swift
//  Alert
//
//  Created by Gamze Akyüz on 9.01.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func alert1(_ sender: Any) {
        let alert = UIAlertController(title: "?", message: "something is wrong", preferredStyle: .alert)
        let okButton = UIAlertAction(title: "Ok", style: .default, handler: nil)
        let cancelButton = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(okButton)
        alert.addAction(cancelButton)
        self.present(alert, animated: true)
    }
    @IBAction func alert2(_ sender: Any) {
        let alert = UIAlertController(title: "?", message: "something is wrong", preferredStyle: .actionSheet)
        let closeButton = UIAlertAction(title: "Close", style: .destructive) { action in
             print("closeButton controller clicked")
        }
        alert.addAction(closeButton)
        self.present(alert, animated: true)
    }
    @IBAction func alert3(_ sender: Any) {
        let alert = UIAlertController(title: "Title", message: "Message", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alert.addTextField { textField in //0
            textField.placeholder = "username"
            textField.keyboardType = .default
        }
        alert.addTextField { textField2 in //1
            textField2.placeholder = "password"
            textField2.keyboardType = .numberPad
            textField2.isSecureTextEntry = true
        }
        let senderButton = UIAlertAction(title: "Sender", style: .default) { action in
            
            if let textFields = alert.textFields, textFields.count >= 2 {
                let username = alert.textFields![0] as UITextField
                let password = alert.textFields![1] as UITextField
                
                if let firstText = username.text, let secondText =  password.text {
                    print("Username : \(firstText)")
                    print("Password : \(secondText)")
                }
                
            }
        }
        alert.addAction(cancelAction)
        alert.addAction(senderButton)
        self.present(alert, animated: true, completion: nil)
    
    }
}

