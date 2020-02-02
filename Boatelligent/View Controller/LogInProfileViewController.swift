//
//  LogInProfileViewController.swift
//  Boatelligent
//
//  Created by Austin Potts on 8/30/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit
import CoreData



class LogInProfileViewController: UIViewController {

    
    
    @IBOutlet weak var login: UIButton!
    
    //MARK: - These are not connected until endpoint configured
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registerLabel: UILabel!
    @IBOutlet weak var registerLoginLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        login.layer.cornerRadius = 25
    }
    
    var isLogin: Bool = true
    var loginController = LoginController()
    
    //MARK: Method SignUp + Sign In
    
    func signUp(with user: UserRepresentation) {
        loginController.signUp(with: user, completion: { (error) in
    
            if let error = error{
                NSLog("Error signing up \(error)")
            }
            
            self.signIn(with: user)
            
        })
        
    }
    
    func signIn(with user: UserRepresentation){
        loginController.signIn(with: user, completion: { (error, _)  in
            
            if let error = error {
                NSLog("Error: \(error)")
                
                
            } else {
                DispatchQueue.main.async {
                    UserDefaults.standard.set(true, forKey: "LoggedIn")
                    self.dismiss(animated: true, completion: nil)
                }
            }
        })
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        
        
        guard let username = usernameTextField.text,
            let password = passwordTextField.text,
            !username.isEmpty,
            !password.isEmpty else{return}
        
        let user = UserRepresentation(username: username, password: password)
        
        
        
        if isLogin == true {
            signIn(with: user)
        } else {
            signUp(with: user)
        }
        
        
        
    }
    
    @IBAction func registrationButtonTapped(_ sender: UIButton) {
        
        isLogin = !isLogin
        
        if isLogin == true {
            loginButton.setTitle("LOGIN", for: .normal)
            registerLoginLabel.text = "If you have not registered, please click"
        } else {
            loginButton.setTitle("REGISTER", for: .normal)
            registerLoginLabel.text = "If you would like to login, please click"
        }
    }
}
