//
//  ButtonCounterApp.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/09.
//

import SwiftUI

struct ButtonCounterApp: View {
    @State private var number = 0
    @State private var value = 0
    
    var body: some View {
        VStack {
            Text("数字: \(number)")
                .font(.largeTitle)
                .padding()
            HStack {
                Button(action : {
                    number += 1
                }) {
                    Text("カウントアップ")
                        .font(.headline)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                }
                Button(action: {
                    number -= 1
                }) {
                    Text("カウントダウン")
                        .font(.headline)
                        .padding()
                        .background(Color.red)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                }
            }
        }
        HStack {
            Button(action : {
                number = 0
            }) {
                Text("0")
                    .font(.headline)
                    .padding()
                    .background(Color.pink)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
            }
                Button(action : {
                    number += 10
                }) {
                    Text("+10")
                        .font(.headline)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                }
                Button(action : {
                    number -= 10
                }) {
                    Text("-10")
                        .font(.headline)
                        .padding()
                        .background(Color.red)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                }
                Button(action : {
                    number += 100
                }) {
                    Text("+100")
                        .font(.headline)
                        .padding()
                        .background(Color.yellow)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                }
                Button(action : {
                    number -= 100
                }) {
                    Text("-100")
                        .font(.headline)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                }
            }
            .padding()
        ScrollView {
            VStack {
                ForEach(0..<3) { row in
                    HStack {
                        ForEach(0..<3) { column in
                            Button(action: {
                                value = 10 - (row * 3 + column + 1)
                                number += value
                            }) {
                                Text("+\(10 - (row * 3 + column + 1))")
                                    .bold()
                                    .padding()
                                    .frame(width: 80, height: 80)
                                    .foregroundColor(Color.black)
                                    .overlay(
                                        Circle()
                                            .stroke(Color.blue, lineWidth: 3)
                                    )
                            }
                        }
                    }
                }
                ForEach(0..<3) { row in
                    HStack {
                        ForEach(0..<3) { column in
                            Button(action: {
                                value = row * 3 + column + 1
                                number -= value
                            }) {
                                Text("-\(row * 3 + column + 1)")
                                    .bold()
                                    .padding()
                                    .frame(width: 80, height: 80)
                                    .foregroundColor(Color.black)
                                    .overlay(
                                        Circle()
                                            .stroke(Color.red, lineWidth: 3)
                                    )
                            }
                        }
                    }
                }
            }
                .padding()
                .navigationTitle("ボタンカウンター")
        }
        Spacer()
    }
}

#Preview {
    ButtonCounterApp()
}
