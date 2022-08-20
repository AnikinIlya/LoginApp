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
    private let user = User.getUsersData()
    
// MARK: - Override Methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBar = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBar.viewControllers else { return }
        
        for viewController in viewControllers {
            if let profileVC = viewController as? ProfileViewController {
                profileVC.user = user
            } else if let navigationVC = viewController as? UINavigationController {
                guard let userBioVC = navigationVC.topViewController as? UserBioViewController else { return }
                userBioVC.user = user
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
// MARK: - IBAction
    //Проверка введенных значений
    @IBAction func signInPressed() {
        guard loginTF.text == user.login, passwordTF.text == user.password else {
            showAlert(
                title: "Oops!",
                message: "Incorrect login or password! Please try again",
                textField: passwordTF
            )
            return
        }
        performSegue(withIdentifier: "openWelcomeVC", sender: nil)
    }
    //Алёрты с напоминанием данных
    @IBAction func remindRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops!", message: "Your name is \(user.login) 😉")
        : showAlert(title: "Oops!", message: "Your password is \(user.password) 😉")
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

