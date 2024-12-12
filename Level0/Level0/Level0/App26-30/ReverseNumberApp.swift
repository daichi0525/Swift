//
//  ReverseNumberApp.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/12.
//

import SwiftUI

struct ReverseNumberApp: View {
    @State private var inputNumber = ""
    @State private var reversedNumber = ""

    var body: some View {
        VStack {
            TextField("数字を入力", text: $inputNumber)
                .keyboardType(.numberPad)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())

            Button("反転") {
                reversedNumber = String(inputNumber.reversed())
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)

            Text("数字じゃなくてもいけちゃいますwww")
            Text("反転した数字: \(reversedNumber)")
                .padding()
        }
        .padding()
        .navigationTitle("数字反転アプリ")
    }
}

#Preview {
    ReverseNumberApp()
}
