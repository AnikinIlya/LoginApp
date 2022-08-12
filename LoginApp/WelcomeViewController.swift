//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Anikin Ilya on 12.08.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    // MARK: - IBOutlet
    @IBOutlet var welcomeLabel: UILabel!
    
    // MARK: - Public Properties
    var welcomeText: String!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = welcomeText
    }
    
    // MARK: - IBAction
    @IBAction func signOutButtonPressed() {
        dismiss(animated: true)
    }
}
