//
//  RegisterViewController.swift
//  Cinema
//
//  Created by Giacomo on 16/10/18.
//  Copyright © 2018 Michele Pertile. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    enum TextFieldsType : Int{
        case name = 0
        case surname
        case email
        case password
        case password2
    }
    private var listPerson : [Person]!

    @IBOutlet var registerCollection: [UITextField]!
    @IBAction func registerActionButton(_ sender: UIButton) {
        for tag in 0...4 {
            NSLog("tag: "+String(tag))
            guard registerCollection[tag].text != "" else{
                NSLog("campi vuoti")
                return
            }
        }
        NSLog("campi non vuoti")
        var pw : String!
        pw = registerCollection[TextFieldsType.password.rawValue].text
        guard pw == registerCollection[TextFieldsType.password2.rawValue].text else{
            NSLog("password diverse")
            return
        }
        NSLog("password uguali")
        guard pw.count > 5 else{
            NSLog("password minore di 6 car")
            return
        }
        NSLog("password.count OK!")
        let email = registerCollection[TextFieldsType.email.rawValue].text
        for persona in listPerson {
            guard persona.email != email else{
                let alert = UIAlertController(title: "Attention", message: "Existing email", preferredStyle: .alert)
                let okay = UIAlertAction(title: "Okay", style: .cancel, handler: nil)
                alert.addAction(okay)
                self.present(alert, animated: true, completion: nil)
                NSLog("email già esistente")
                return
            }
            
            
            
        }
        NSLog("email non esistente, OK, registrato!")
        self.performSegue(withIdentifier: "returnLoginSegue", sender: self)
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        listPerson = Person.all()
        
        // Do any additional setup after loading the view.
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    func isValidEmail(testStr:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: testStr)
    }
}
