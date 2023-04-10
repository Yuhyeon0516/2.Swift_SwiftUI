//
//  ContentView.swift
//  SwiftUI-Basic
//
//  Created by Yuhyeon Kim on 2023/01/07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ImageView()
            ButtonView()
            TextView()
            
            HStack {
                ImageView()
                ButtonView()
                TextView()
            }
            
            ZStack {
                ImageView()
                ButtonView()
                TextView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
