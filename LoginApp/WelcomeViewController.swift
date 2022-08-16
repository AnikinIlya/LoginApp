//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Anikin Ilya on 12.08.2022.
//

import UIKit

final class WelcomeViewController: UIViewController {

// MARK: - IBOutlet
    @IBOutlet var welcomeLabel: UILabel!
    
// MARK: - Public Properties
    var user = ""
    
// MARK: - Private Properties
    private let primaryColor = UIColor(
        red: 210/255,
        green: 110/255,
        blue: 130/255,
        alpha: 1
    )
    
    private let secondaryColor = UIColor(
        red: 105/255,
        green: 148/255,
        blue: 230/255,
        alpha: 1
    )
// MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        welcomeLabel.text = "Welcome, \(user)"
    }
    
// MARK: - IBAction
    
}


// MARK: - Set background color
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
