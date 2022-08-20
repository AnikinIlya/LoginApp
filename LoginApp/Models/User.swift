//
//  User.swift
//  LoginApp
//
//  Created by Anikin Ilya on 16.08.2022.
//

struct User {
    let login: String
    let password: String
    let info: Profile
}

struct Profile {
    let name: String
    let surename: String
    let bio: String
    let pictures: [String]
}

extension User {
    static func getUsersData() -> User {
        return User(
                login: "user",
                password: "123",
                info: Profile(
                    name: "Ilya",
                    surename: "Anikin",
                    bio: """
Привет!
Я живу в городе Ижевск.
Имею специальность "техник-программист", но не горел программированием во время учебы в техникуме. Поменял своё мнение после службы в армии (было много времени подумать о будущем 😀).
Из хобби - люблю играть в настолки и заниматься моделированием.
""",
                    pictures: [
                        "firstImage.png",
                        "secondImage.png",
                        "thirdImage.png",
                        "fourthImage.png",
                        "fifthImage.png"
                    ]
                )
        )
    }
}
