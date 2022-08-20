//
//  UserPicturesViewController.swift
//  LoginApp
//
//  Created by Anikin Ilya on 16.08.2022.
//

import UIKit

final class UserPicturesViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var backgroundView: UIView!
    
    @IBOutlet var picturesImageViews: [UIImageView]!
    
    // MARK: - Public Properties
    var user: User!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        loadImages(user.info.pictures)
    }
    
    // MARK: - Private Methods
    private func loadImages(_ images: [String]) {
        for imageNum in 0...images.count - 1 {
            picturesImageViews[imageNum].image = UIImage(named: images[imageNum])
        }
    }
}
