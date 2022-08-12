//
//  ViewController.swift
//  LoginApp
//
//  Created by Anikin Ilya on 12.08.2022.
//

import UIKit

class LogInViewController: UIViewController {

    // MARK: - IBOutlet
    @IBOutlet var loginTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    // MARK: - Private Properties
    private let userLogin = "user"
    private let userPassword = "123"
    
    // MARK: - Override Methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        isCorrectUserLoginInfo()
        
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.welcomeText = "Welcome, \(userLogin)!"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    // MARK: - IBAction
    //Напомнить логин
    @IBAction func remindLogin() {
        let loginAlert = UIAlertController(
            title: "Login",
            message: "Your login is '\(userLogin)' 😉",
            preferredStyle: .alert
        )
        loginAlert.addAction(UIAlertAction(title: "Ok", style: .default))
        
        self.present(loginAlert, animated: true)
    }
    
    //Напомнить пароль
    @IBAction func remindPassword() {
        let passwordAlert = UIAlertController(
            title: "Password",
            message: "Your password is '\(userPassword)' 😉",
            preferredStyle: .alert
        )
        passwordAlert.addAction(UIAlertAction(title: "Ok", style: .default))
        
        self.present(passwordAlert, animated: true)
    }
    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        guard let loginVC = segue.destination as? LogInViewController else { return }
        loginVC.loginTF.text = ""
        loginVC.passwordTF.text = ""
    }
    
    // MARK: - Private Methods
    //Проверка вводимых значений
    private func isCorrectUserLoginInfo() {
        let incorrectUserLoginAlert = UIAlertController(
            title: "Oops!",
            message: "Incorrect login or password! Please try again",
            preferredStyle: .alert
        )
        
        incorrectUserLoginAlert.addAction(
            UIAlertAction(
                title: "Ok",
                style: .default,
                handler: { _ in self.passwordTF.text = "" }
            )
        )
        
        guard loginTF.text == userLogin, passwordTF.text == userPassword else {
                self.present(incorrectUserLoginAlert, animated: true)
                return
        }
    }
}

