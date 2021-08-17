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
    
    @IBOutlet weak var emailSwitch: UISwitch!
    
    @IBAction func loginButtomAction() {
        let email = loginTextField.text
        let password = passwordTextFiel.text
        
        if email == "egnapolo@gmail.com", password == "1234"{
            if emailSwitch.isOn {
                storage.set(email, forKey: emailKey)
            } else{
                storage.removeObject(forKey: emailKey)
            }
            performSegue(withIdentifier: "homeSegue", sender: nil)
        }else {
            print("invalido")
        }
    }
    private let emailKey = "email-key"
    //lo siguiente me da acceso a los valores guardados
    private let storage = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let storeEmail = storage.string(forKey: emailKey){
            loginTextField.text = storeEmail
            emailSwitch.isOn = true
        }else {
            emailSwitch.isOn = false
        }
        // Do any additional setup after loading the view.
    }


}

