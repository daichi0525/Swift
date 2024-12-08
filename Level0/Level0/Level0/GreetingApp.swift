//
//  GreetingApp.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/08.
//

import SwiftUI

struct GreetingApp: View {
    @State private var isOn = false
    
    var body: some View {
        VStack {
            Text(isOn ? "おはようございます！" : "こんにちは！")
                .font(.largeTitle)
                .padding()
            
            Button(action: {
                isOn.toggle()
            }) {
                Text("挨拶を変更")
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
    }
}

#Preview {
    GreetingApp()
}
