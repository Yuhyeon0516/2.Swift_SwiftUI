//
//  ContentView.swift
//  AppleFramework-SwiftUI
//
//  Created by Yuhyeon Kim on 2023/01/07.
//

import SwiftUI

struct FrameworkListView: View {
    
    @StateObject var vm = FrameworkListViewModel()
    
    let layout: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: layout) {
                    ForEach($vm.models) { $item in
                        FrameworkCell(framework: $item)
                            .onTapGesture {
                                vm.isShowingdetail = true
                                vm.selectedItem = item
                            }
                    }
                }
                .padding([.top, .leading, .trailing], 16.0)
            }
            .navigationTitle("☀️ Apple Framework")
        }
        .sheet(isPresented: $vm.isShowingdetail) {
            let vm = FrameworkDetailViewModel(framework: vm.selectedItem!)
            FrameworkDetailView(viewModel: vm)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkListView()
    }
}
