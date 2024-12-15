//
//  FlashCardView.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/15.
//

import SwiftUI

struct FlashCardView: View {
    @State private var isFlipped = false
    let word: String
    let meaning: String
    
    var body: some View {
        ZStack {
            Group {
                if isFlipped {
                    CardFaceView(text: meaning, backgroundColor: .blue)
                        .rotation3DEffect(
                            .degrees(180),
                            axis: (x: 0, y: 1, z: 0)
                        )
                } else {
                    CardFaceView(text: word, backgroundColor: .green)
                }
            }
        }
        .frame(width: 250, height: 150)
        .cornerRadius(20)
        .shadow(radius: 5)
        .rotation3DEffect(
            .degrees(isFlipped ? 180 : 0),
            axis: (x: 0, y: 1, z: 0)
        )
        .onTapGesture {
            withAnimation(.easeInOut(duration: 0.6)) {
                isFlipped.toggle()
            }
        }
    }
}

struct CardFaceView: View {
    let text: String
    let backgroundColor: Color
    
    var body: some View {
        ZStack {
            backgroundColor
            Text(text)
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding()
        }
        .frame(width: 250, height: 150)
    }
}

#Preview {
    FlashCardView(word: "1+1=", meaning: "1+1=\n2")
}
