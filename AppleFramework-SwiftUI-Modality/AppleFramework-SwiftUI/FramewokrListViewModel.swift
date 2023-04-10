//
//  FramewokrListViewModel.swift
//  AppleFramework-SwiftUI
//
//  Created by Yuhyeon Kim on 2023/01/07.
//

import Foundation

final class FrameworkListViewModel: ObservableObject {
    @Published var models: [AppleFramework] = AppleFramework.list
    @Published var isShowingdetail: Bool = false
    @Published var selectedItem: AppleFramework?
}
