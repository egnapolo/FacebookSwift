//
//  ViewController.swift
//  Facebook
//
//  Created by Egna Lizeth Polo Rubiano on 12/08/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextFiel: UITextField!
    
    
    @IBAction func loginButtomAction() {
        let email = loginTextField.text
        let password = passwordTextFiel.text
        
        if email == "egnapolo@gmail.com", password == "1234"{
            performSegue(withIdentifier: "homeSegue", sender: nil)
        }else {
            print("invalido")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

