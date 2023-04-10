//
//  EnvironmentObjTestApp.swift
//  EnvironmentObjTest
//
//  Created by Yuhyeon Kim on 2023/01/07.
//

import SwiftUI

@main
struct EnvironmentObjTestApp: App {
    @StateObject var userProfile = UserProfileSettings()
    
    var body: some Scene {
        WindowGroup {
            FirstView().environmentObject(userProfile)
        }
    }
}
