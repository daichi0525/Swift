//
//  SimpleCalcApp.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/15.
//

import SwiftUI

struct SimpleCalcApp: View {
    @State private var number1 = ""
    @State private var number2 = ""
    @State private var result = 0

    var body: some View {
        VStack {
            TextField("数字1を入力", text: $number1)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)
                .padding()

            TextField("数字2を入力", text: $number2)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)
                .padding()

            Button("計算") {
                if let num1 = Int(number1), let num2 = Int(number2) {
                    result = num1 + num2
                }
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)

            Text("結果: \(result)")
                .font(.title)
                .padding()
        }
        .navigationTitle("数字計算機アプリ")
    }
}

#Preview {
    SimpleCalcApp()
}
