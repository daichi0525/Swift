//
//  InputFormApp.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/12.
//

import SwiftUI

struct InputFormApp: View {
    @State private var username = ""

    var body: some View {
        VStack {
            TextField("名前を入力", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Text("こんにちは、\(username)!")
                .font(.title)
                .padding()
        }
        .navigationBarTitle("入力フォームアプリ")
    }
}

#Preview {
    InputFormApp()
}
