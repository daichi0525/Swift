//
//  NumberDisplayApp.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/08.
//

import SwiftUI

struct NumberDisplayApp: View {
    @State private var number = 0
    
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
//        VStack {
//            HStack {
//            Button(action : {
//                number = 0
//            }) {
//                Text("0")
//                    .font(.headline)
//                    .padding()
//                    .background(Color.pink)
//                    .foregroundColor(Color.white)
//                    .cornerRadius(10)
//            }
//                Button(action : {
//                    number += 10
//                }) {
//                    Text("+10")
//                        .font(.headline)
//                        .padding()
//                        .background(Color.green)
//                        .foregroundColor(Color.white)
//                        .cornerRadius(10)
//                }
//                Button(action : {
//                    number -= 10
//                }) {
//                    Text("-10")
//                        .font(.headline)
//                        .padding()
//                        .background(Color.red)
//                        .foregroundColor(Color.white)
//                        .cornerRadius(10)
//                }
//                Button(action : {
//                    number += 100
//                }) {
//                    Text("+100")
//                        .font(.headline)
//                        .padding()
//                        .background(Color.yellow)
//                        .foregroundColor(Color.white)
//                        .cornerRadius(10)
//                }
//                Button(action : {
//                    number -= 100
//                }) {
//                    Text("-100")
//                        .font(.headline)
//                        .padding()
//                        .background(Color.blue)
//                        .foregroundColor(Color.white)
//                        .cornerRadius(10)
//                }
//            }
//            .padding()
//            HStack {
//                Button(action: {
//                    number += 9
//                }) {
//                    Text("+9")
//                        .bold()
//                        .padding()
//                        .frame(width: 80, height: 80)
//                        .foregroundColor(Color.black)
//                        .overlay(
//                            Circle()
//                                .stroke(Color.yellow, lineWidth: 3)
//                        )
//                }
//                Button(action: {
//                    number += 8
//                }) {
//                    Text("+8")
//                        .bold()
//                        .padding()
//                        .frame(width: 80, height: 80)
//                        .foregroundColor(Color.black)
//                        .overlay(
//                            Circle()
//                                .stroke(Color.yellow, lineWidth: 3)
//                        )
//                }
//                Button(action: {
//                    number += 7
//                }) {
//                    Text("+7")
//                        .bold()
//                        .padding()
//                        .frame(width: 80, height: 80)
//                        .foregroundColor(Color.black)
//                        .overlay(
//                            Circle()
//                                .stroke(Color.yellow, lineWidth: 3)
//                        )
//                }
//            }
//            HStack {
//                Button(action: {
//                    number += 6
//                }) {
//                    Text("+6")
//                        .bold()
//                        .padding()
//                        .frame(width: 80, height: 80)
//                        .foregroundColor(Color.black)
//                        .overlay(
//                            Circle()
//                                .stroke(Color.yellow, lineWidth: 3)
//                        )
//                }
//                Button(action: {
//                    number += 5
//                }) {
//                    Text("+5")
//                        .bold()
//                        .padding()
//                        .frame(width: 80, height: 80)
//                        .foregroundColor(Color.black)
//                        .overlay(
//                            Circle()
//                                .stroke(Color.yellow, lineWidth: 3)
//                        )
//                }
//                Button(action: {
//                    number += 4
//                }) {
//                    Text("+4")
//                        .bold()
//                        .padding()
//                        .frame(width: 80, height: 80)
//                        .foregroundColor(Color.black)
//                        .overlay(
//                            Circle()
//                                .stroke(Color.yellow, lineWidth: 3)
//                        )
//                }
//            }
//            HStack {
//                Button(action: {
//                    number += 3
//                }) {
//                    Text("+3")
//                        .bold()
//                        .padding()
//                        .frame(width: 80, height: 80)
//                        .foregroundColor(Color.black)
//                        .overlay(
//                            Circle()
//                                .stroke(Color.yellow, lineWidth: 3)
//                        )
//                }
//                Button(action: {
//                    number += 2
//                }) {
//                    Text("+2")
//                        .bold()
//                        .padding()
//                        .frame(width: 80, height: 80)
//                        .foregroundColor(Color.black)
//                        .overlay(
//                            Circle()
//                                .stroke(Color.yellow, lineWidth: 3)
//                        )
//                }
//                Button(action: {
//                    number += 1
//                }) {
//                    Text("+1")
//                        .bold()
//                        .padding()
//                        .frame(width: 80, height: 80)
//                        .foregroundColor(Color.black)
//                        .overlay(
//                            Circle()
//                                .stroke(Color.yellow, lineWidth: 3)
//                        )
//                }
//            }
//        }
        .navigationTitle("数字表示アプリ")
        Spacer()
    }
}

#Preview {
    NumberDisplayApp()
}
