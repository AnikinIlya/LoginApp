//
//  User.swift
//  LoginApp
//
//  Created by Anikin Ilya on 16.08.2022.
//

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
}

extension UserData {
    static func getUsers() -> UserData {
        return UserData(
                userLogin: "user",
                userPassword: "123",
                userInfo: Profile(
                    profileName: "Илья",
                    profileSurename: "Аникин",
                    profileAge: 23,
                    profileBio: "Живу в Ижевске. Бла, бла, бла"
                )
        )
    }
}
