//
//  UserBioViewController.swift
//  LoginApp
//
//  Created by Anikin Ilya on 16.08.2022.
//

import UIKit

final class UserBioViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var profileBioLabel: UILabel!
    
    // MARK: - Public Properties
    var user: User!
    
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
        
        title = "\(user.info.name)  \(user.info.surename)"
        profileBioLabel.text = user.info.bio
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let userPicturesVC =
                segue.destination as? UserPicturesViewController else { return }
        userPicturesVC.user = user
    }
}

