//
//  TextScrollApp.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/15.
//

import SwiftUI

struct TextScrollApp: View {
    var body: some View {
        ScrollView {
            VStack {
                ForEach(0..<50) { i in
                    Text("テキスト \(i + 1)")
                        .padding()
                }
            }
        }
        .navigationTitle("文字スクロールアプリ")
    }
}

#Preview {
    TextScrollApp()
}
