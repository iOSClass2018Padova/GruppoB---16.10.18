//
//  LoginViewController.swift
//  Cinema
//
//  Created by Jason Bourne on 16/10/18.
//  Copyright © 2018 Michele Pertile. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    

    @IBOutlet weak var emailOutlet: UITextField!
    @IBOutlet weak var passwordOutlet: UITextField!
    
    @IBAction func loginAction(_ sender: UIButton) {
    }
    @IBAction func registerAction(_ sender: UIButton) {
        self.performSegue(withIdentifier: "registerSegue", sender: self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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

}
