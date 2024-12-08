//
//  ColorChangeApp.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/08.
//

import SwiftUI

struct ColorChangeApp: View {
    @State private var color: Color = .red
    
    var body: some View {
        VStack {
            Rectangle()
                .fill(color)
                .frame(height: 200)
                .padding()
            
            Button(action: {
                color = color == .red ? .blue : .red
            }) {
                Text("背景色を変更")
                    .font(.title)
                    .padding()
                    .background( color == .red ? Color.blue : .red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .navigationTitle("色変化アプリ")
    }
}

#Preview {
    ColorChangeApp()
}
