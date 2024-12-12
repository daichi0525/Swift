//
//  TitleChangeApp.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/12.
//

import SwiftUI

struct TitleChangeApp: View {
    @State private var title = "初期タイトル"

    var body: some View {
        VStack {
            Text(title)
                .font(.largeTitle)
                .padding()

            Button("タイトルを変更") {
                title = "新しいタイトル"
            }
            .padding()
            .background(Color.orange)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .navigationTitle("タイトル変更アプリ")
    }
}

#Preview {
    TitleChangeApp()
}
