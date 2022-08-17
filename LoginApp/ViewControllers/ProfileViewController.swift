//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Anikin Ilya on 12.08.2022.
//

import UIKit

final class ProfileViewController: UIViewController {

// MARK: - IBOutlets
    @IBOutlet var welcomeLabel: UILabel!
    
// MARK: - Public Properties
    var user: UserData!
    
// MARK: - Private Properties
    private let primaryColor = UIColor(
        red: 88/255,
        green: 86/255,
        blue: 214/255,
        alpha: 1
    )
    
    private let secondaryColor = UIColor(
        red: 255/255,
        green: 204/255,
        blue: 0/255,
        alpha: 1
    )
    
// MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        welcomeLabel.text = "Welcome, \(user.userInfo.profileName)"
    }
}


// MARK: - Extensions
//Background color for view
extension UIView {
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
