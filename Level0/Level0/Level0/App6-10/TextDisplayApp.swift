//
//  TextDisplayApp.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/11.
//

import SwiftUI

struct TextDisplayApp: View {
    var body: some View {
        Text("Hello, SwiftUI")
            .font(.largeTitle)
            .padding()
            .navigationTitle("テキスト表示")
    }
}

#Preview {
    TextDisplayApp()
}
