//
//  UserProfileSettings.swift
//  EnvironmentObjTest
//
//  Created by Yuhyeon Kim on 2023/01/07.
//

import Foundation

final class UserProfileSettings: ObservableObject {
    @Published var name: String = ""
    @Published var age: Int = 0
    
    func haveBirthDayParty() {
        age += 1
    }
}
