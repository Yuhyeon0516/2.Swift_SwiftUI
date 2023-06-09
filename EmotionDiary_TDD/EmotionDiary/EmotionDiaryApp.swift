//
//  EmotionDiaryApp.swift
//  EmotionDiary
//
//  Created by Yuhyeon Kim on 2023/04/07.
//

import SwiftUI

@main
struct EmotionDiaryApp: App {
    var body: some Scene {
        WindowGroup {
            let vm = DiaryListViewModel(storage: MoodDiaryStorage())
            DiaryListView(vm: vm)
        }
    }
}
