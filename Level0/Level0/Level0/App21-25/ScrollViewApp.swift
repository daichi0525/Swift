//
//  ScrollViewApp.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/12.
//

import SwiftUI

struct ScrollViewApp: View {
    var body: some View {
        ScrollView {
            ForEach(1..<20) { index in
                Image("dog1")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding()
            }
        }
        .navigationTitle("スクロールビューアプリ")
    }
}

#Preview {
    ScrollViewApp()
}
