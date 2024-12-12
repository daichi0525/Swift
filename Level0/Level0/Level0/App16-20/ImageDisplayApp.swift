//
//  ImageDisplayApp.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/12.
//

import SwiftUI

struct ImageDisplayApp: View {
    var body: some View {
        VStack {
            Image("dog1")  // Assetsに"sampleImage"という名前で画像を追加してください
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .padding()
        }
    }
}

#Preview {
    ImageDisplayApp()
}
