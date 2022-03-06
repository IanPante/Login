//
//  ViewController.swift
//  Login
//
//  Created by macbook on 3/6/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var username: UITextField!
    @IBOutlet var forgotUserNameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else { return }
        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUserNameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
        segue.destination.navigationItem.title = username.text
        }
    }

    @IBAction func forgotUserNameButton(_ sender: UIButton) {
        performSegue(withIdentifier: "forgotUsernameOrPassword", sender: sender)
    }
    
    @IBAction func forgotPasswordButton(_ sender: UIButton) {
        performSegue(withIdentifier: "forgotUsernameOrPassword", sender: sender)
    }
}

