//
//  SimpleSliderApp.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/15.
//

import SwiftUI

struct SimpleSliderApp: View {
    @State private var sliderValue: Double = 0.0
    
    var body: some View {
        VStack {
            Slider(value: $sliderValue, in: 0...100)
                .padding()
            
            Text("値: \(Int(sliderValue))")
                .font(.largeTitle)
        }
        .navigationTitle("簡単なスライダーアプリ")
    }
}

#Preview {
    SimpleSliderApp()
}
