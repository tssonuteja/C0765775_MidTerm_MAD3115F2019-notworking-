//
//  ViewController.swift
//  C0765775_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-11-01.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var Email: UITextField!
    
    
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func Login(_ sender: UIBarButtonItem) {
        
        self.validateUser()
    }
    
    func validateUser(){
        
        if(Email.text == "saitejasunkari@gmail.com" && password.text == "saiteja1")
            
        {
            let myStoryBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            
            let nextVC = myStoryBoard.instantiateViewController(withIdentifier: "CustomerVC") as! CustomerListTableViewController
            
            self.present(nextVC, animated: true, completion: nil)
        }
        
        else
            
        {
            
            let alert  =
                
                UIAlertController(title: "Error", message: "User Email / Password incorrect", preferredStyle: UIAlertController.Style.alert)
            
            let actionOk = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            
            alert.addAction(actionOk)
            self.present(alert, animated: true, completion: nil)
            
        }
        
    }
    
    
    @IBAction func remember(_ sender: UISwitch) {
    }
    
    
    
    

}

