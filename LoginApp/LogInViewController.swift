//
//  ViewController.swift
//  LoginApp
//
//  Created by Anikin Ilya on 12.08.2022.
//

import UIKit

final class LogInViewController: UIViewController {

    // MARK: - IBOutlet
    @IBOutlet var loginTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    // MARK: - Private Properties
    private let userLogin = "user"
    private let userPassword = "123"
    
    // MARK: - Override Methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.user = userLogin
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    // MARK: - IBAction
    //Проверка введенных значений
    @IBAction func signInPressed() {
        guard loginTF.text == userLogin, passwordTF.text == userPassword else {
            showAlert(
                title: "Oops!",
                message: "Incorrect login or password! Please try again",
                textField: passwordTF
            )
            return
        }
        performSegue(withIdentifier: "openWelcomeVC", sender: nil)
    }
    
    @IBAction func remindRegisterData(_ sender: UIButton) {
        sender.tag == 0
            ? showAlert(title: "Oops!", message: "Your name is \(userLogin) 😉")
            : showAlert(title: "Oops!", message: "Your password is \(userPassword) 😉")
    }
    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        loginTF.text = ""
        passwordTF.text = ""
    }
    
    // MARK: - Private Methods
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

