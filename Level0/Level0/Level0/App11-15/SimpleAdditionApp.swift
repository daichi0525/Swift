//
//  SimpleAdditionApp.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/12.
//

import SwiftUI

struct SimpleAdditionApp: View {
    @State private var number1 = ""
    @State private var number2 = ""
    @State private var result = 0

    var body: some View {
        VStack {
            TextField("数値1", text: $number1)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            TextField("数値2", text: $number2)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button("足し算") {
                let num1 = Int(number1) ?? 0
                let num2 = Int(number2) ?? 0
                result = num1 + num2
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)

            Text("結果: \(result)")
                .font(.title)
                .padding()
        }
        .padding()
        .navigationBarTitle("数字足し算")
    }
}

#Preview {
    SimpleAdditionApp()
}
