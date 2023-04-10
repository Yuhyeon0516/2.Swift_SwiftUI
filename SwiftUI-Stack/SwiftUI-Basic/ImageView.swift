//
//  ImageView.swift
//  SwiftUI-Basic
//
//  Created by Yuhyeon Kim on 2023/01/07.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        Image(systemName: "sun.max.fill")
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
