//
//  FlashCardView.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/15.
//

import SwiftUI

struct FlashCardView: View {
    @State private var currentIndex = 0
    @State private var isFlipped = false
    
    let flashCards: [(question: String, answer: String)] = [
        ("1+1=", "2"),
        ("1+2=", "3"),
        ("1+3=", "4")
    ]
    
    var body: some View {
        HStack(spacing: 20) {
            // 左側のカード（問題）
            ZStack {
                if currentIndex < flashCards.count {
                    CardView(text: flashCards[currentIndex].question, backgroundColor: .green, hasRingHole: true)
                } else {
                    CardView(text: "", backgroundColor: .gray, hasRingHole: true, showRestartButton: true, onRestart: restart)
                }
            }
            
            // 右側のカード（解答）
            ZStack {
                if isFlipped {
                    if currentIndex > 0 {
                        CardView(text: "\(flashCards[currentIndex - 1].question)\n\(flashCards[currentIndex - 1].answer)", backgroundColor: .blue, hasRingHole: false)
                    }
                } else {
                    CardView(text: "", backgroundColor: .gray, hasRingHole: false)
                }
            }
        }
        .padding()
        .onTapGesture {
            withAnimation(.easeInOut(duration: 0.6)) {
                flipCard()
            }
        }
    }
    
    // カードをめくる動作
    func flipCard() {
        if isFlipped {
            currentIndex += 1
        }
        isFlipped.toggle()
    }
    
    // 最初からやり直す
    func restart() {
        currentIndex = 0
        isFlipped = false
    }
}

struct CardView: View {
    let text: String
    let backgroundColor: Color
    var hasRingHole: Bool = false
    var showRestartButton: Bool = false
    var onRestart: (() -> Void)? = nil
    
    var body: some View {
        ZStack {
            backgroundColor
                .frame(width: 150, height: 200)
                .cornerRadius(15)
                .shadow(radius: 5)
            
            if hasRingHole {
                // 右側のリング穴
                Circle()
                    .fill(Color.white)
                    .frame(width: 15, height: 15)
                    .position(x: 135, y: 25)
                    .shadow(radius: 2)
            }
            
            if showRestartButton {
                VStack {
                    Text("最初から")
                        .foregroundColor(.white)
                        .bold()
                        .padding()
                        .background(Color.red)
                        .cornerRadius(10)
                        .onTapGesture {
                            onRestart?()
                        }
                }
            } else {
                Text(text)
                    .font(.title2)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding()
            }
        }
        .frame(width: 150, height: 200)
    }
}

#Preview {
    FlashCardView()
}
