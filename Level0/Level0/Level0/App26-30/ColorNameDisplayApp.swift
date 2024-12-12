//
//  ColorNameDisplayApp.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/12.
//

import SwiftUI

struct ColorNameDisplayApp: View {
    @State private var colorName = ""
    @State private var backgroundColor = Color.white

    let colorDictionary: [String: Color] = [
        "red": .red,
        "blue": .blue,
        "green": .green,
        "yellow": .yellow,
        "black": .black,
        "white": .white
    ]

    var body: some View {
        VStack(alignment: .leading){
            ForEach(Array(colorDictionary.keys), id: \.self) { key in
                Text("\(key)")
                    .foregroundColor(colorDictionary[key] ?? .gray)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
        .padding()
        .background(Color.gray .opacity(0.9))
        
        VStack {
            TextField("色の名前を入力", text: $colorName)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button("色を表示") {
                backgroundColor = colorDictionary[colorName.lowercased()] ?? .gray
            }
            .padding()
            .background(Color.black)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .background(backgroundColor)
        .edgesIgnoringSafeArea(.all)
        .navigationTitle("色の名前表示アプリ")
    }
}

#Preview {
    ColorNameDisplayApp()
}
