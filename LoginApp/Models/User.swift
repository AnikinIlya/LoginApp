//
//  User.swift
//  LoginApp
//
//  Created by Anikin Ilya on 16.08.2022.
//

import UIKit

struct UserData {
    let userLogin: String
    let userPassword: String
    let userInfo: Profile
}

struct Profile {
    let profileName: String
    let profileSurename: String
    let profileAge: Int
    let profileBio: String
    let profilePictures: [UIImage?]
}

extension UserData {
    static func getUsersData() -> UserData {
        return UserData(
                userLogin: "user",
                userPassword: "123",
                userInfo: Profile(
                    profileName: "Ilya",
                    profileSurename: "Anikin",
                    profileAge: 23,
                    profileBio: """
Привет!
Я живу в городе Ижевск.
Имею специальность "техник-программист", но не горел программированием во время учебы в техникуме. Поменял своё мнение после службы в армии (было много времени подумать о будущем 😀).
Из хобби - люблю играть в настолки и заниматься моделированием.
""",
                    profilePictures: [
//                        UIImage(named: "firstImage.png"),
                        UIImage(named: "secondImage.png"),
//                        UIImage(named: "thirdImage.png"),
                        UIImage(named: "fourthImage.png"),
//                        UIImage(named: "fifthImage.png")
                                     ]
                )
        )
    }
}
