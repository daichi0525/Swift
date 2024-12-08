//
//  SimpleCalculator.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/08.
//

import SwiftUI

struct SimpleCalculator: View {
    @State private var result: Double = 0
    @State private var number1: Double = 0
    @State private var number2: Double = 0
    
    var body: some View {
        VStack {
            HStack {
                TextField("数値1", value: $number1, formatter: NumberFormatter())
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Text("+")
                    .font(.title)
                    .padding()
                
                TextField("数値2", value: $number2, formatter: NumberFormatter())
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
            }
            
            Button(action: {
                result = number1 + number2
            }) {
                Text("計算")
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            Text("結果: \(result, specifier: "%.2f")")
                .font(.title)
                .padding()
        }
        .keyboardType(.decimalPad)
        .padding()
    }
}

#Preview {
    SimpleCalculator()
}
