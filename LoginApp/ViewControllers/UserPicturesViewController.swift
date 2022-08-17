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
    
    // MARK: - Public Properties
    var user: UserData!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadImages(user.userInfo.profilePictures)
    }
    
    // MARK: - Private Methods
    
    /// Работает криво, ещё разберусь и доделаю.
    /// И знаю, что лучше вынести констрэйнты в отдельный метод 😄
    private func loadImages(_ images: [UIImage?]) {
        for image in images {
            let pictureView = UIImageView(image: image)
            backgroundView.addSubview(pictureView)
            
            pictureView.translatesAutoresizingMaskIntoConstraints = false
            
            let topConstraint: NSLayoutConstraint
            
            if image == images[0] {
                topConstraint = NSLayoutConstraint(
                    item: pictureView,
                    attribute: NSLayoutConstraint.Attribute.top,
                    relatedBy: NSLayoutConstraint.Relation.equal,
                    toItem: backgroundView,
                    attribute: NSLayoutConstraint.Attribute.top,
                    multiplier: 1,
                    constant: 20)
            } else {
                topConstraint = NSLayoutConstraint(
                    item: pictureView,
                    attribute: NSLayoutConstraint.Attribute.top,
                    relatedBy: NSLayoutConstraint.Relation.greaterThanOrEqual,
                    toItem: backgroundView,
                    attribute: NSLayoutConstraint.Attribute.top,
                    multiplier: 1,
                    constant: 600)
            }
            
            let heightConstraint = NSLayoutConstraint(
                item: pictureView,
                attribute: NSLayoutConstraint.Attribute.height,
                relatedBy: NSLayoutConstraint.Relation.equal,
                toItem: pictureView,
                attribute: NSLayoutConstraint.Attribute.width,
                multiplier: 1.5,
                constant: 0)
            
            let leadingConstraint = NSLayoutConstraint(
                item: pictureView,
                attribute: NSLayoutConstraint.Attribute.leading,
                relatedBy: NSLayoutConstraint.Relation.equal,
                toItem: backgroundView,
                attribute: NSLayoutConstraint.Attribute.leading,
                multiplier: 1,
                constant: 20)
            
            let trailingConstraint = NSLayoutConstraint(
                item: pictureView,
                attribute: NSLayoutConstraint.Attribute.trailing,
                relatedBy: NSLayoutConstraint.Relation.equal,
                toItem: backgroundView,
                attribute: NSLayoutConstraint.Attribute.trailing,
                multiplier: 1,
                constant: -20)
            
            backgroundView.addConstraints([
                heightConstraint,
                topConstraint,
                leadingConstraint,
                trailingConstraint
            ])
        }
    }
}
