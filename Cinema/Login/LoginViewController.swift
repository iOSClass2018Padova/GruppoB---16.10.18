//
//  LoginViewController.swift
//  Cinema
//
//  Created by Jason Bourne on 16/10/18.
//  Copyright © 2018 Michele Pertile. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    private var listOfPerson : [Person] = []
    
    
    @IBOutlet weak var emailOutlet: UITextField!
    @IBOutlet weak var passwordOutlet: UITextField!
    
    @IBAction func loginAction(_ sender: UIButton) {
        
        for variabile in listOfPerson {
            if variabile.email == emailOutlet.text && variabile.password == passwordOutlet.text{
                NSLog("Login corretto" )
                    
             self.performSegue(withIdentifier: "homeSegue", sender: self)
                
            }
            else{
                NSLog("Login errato")
            }
            
        }
        
    }
    @IBAction func registerAction(_ sender: UIButton) {
        self.performSegue(withIdentifier: "registerSegue", sender: self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listOfPerson = Person.all()
        if listOfPerson.count == 0 {
            NSLog("ListOfPerson vuota" )
            var p : Person = Person(email: "a@a.com", name: "Gian", surname: "Canova", password: "123456")
            p.add()
        // Do any additional setup after loading the view.
        }
        else{
            NSLog("ListOfPerson: " + listOfPerson[0].fullName())
            
        }
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        
   /*     switch segue.identifier {
        case "registerSegue":
            if let destinationController = segue.destination as? RegisterViewController {
              
                
                destinationController
            }
        default:
            break
        }
        
    } */
}
}


