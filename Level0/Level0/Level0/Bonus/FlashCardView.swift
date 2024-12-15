//
//  FlashCardView.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/15.
//

import SwiftUI

struct Flashcard: Identifiable {
    let id = UUID()
    let title: String
    let content: String
}

struct FlashCardView: View {
    @State private var flashcards = [
        Flashcard(title: "コーヒーショップの場所", content: "Where is the coffee shop after exiting the station?"),
        Flashcard(title: "レストランの予約", content: "I'd like to make a reservation for dinner."),
        Flashcard(title: "電車の乗り方", content: "How do I take the train to the city center?"),
        Flashcard(title: "観光スポットの推薦", content: "Can you recommend some popular tourist attractions?"),
        Flashcard(title: "ホテルのチェックイン時間", content: "What time is check-in at the hotel?")
    ]
    
    @State private var currentIndex = 0
    @State private var offset: CGSize = .zero
    @State private var backgroundColor = Color.random
    
    var body: some View {
        VStack {
            Spacer()
            ZStack {
                ForEach(0..<flashcards.count) { index in
                    if index == currentIndex {
                        flashcardView(for: index)
                            .offset(offset)
                            .rotationEffect(.degrees(Double(offset.width / 5)))
                            .gesture(
                                DragGesture()
                                    .onChanged { gesture in
                                        offset = gesture.translation
                                    }
                                    .onEnded { gesture in
                                        withAnimation(.spring()) {
                                            if abs(gesture.translation.width) > 100 {
                                                offset = CGSize(width: gesture.translation.width > 0 ? 1000 : -1000, height: 0)
                                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                                                    changeCard(gesture.translation.width > 0 ? -1 : 1)
                                                }
                                            } else {
                                                offset = .zero
                                            }
                                        }
                                    }
                            )
                    }
                }
            }
            Spacer()
        }
    }
    
    func flashcardView(for index: Int) -> some View {
        VStack {
            Text(flashcards[index].title)
                .font(.headline)
                .padding()
            
            Text(flashcards[index].content)
                .font(.body)
                .padding()
        }
        .frame(width: 300, height: 200)
        .background(backgroundColor)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
    
    func changeCard(_ direction: Int) {
        currentIndex = (currentIndex + direction + flashcards.count) % flashcards.count
        offset = .zero
        backgroundColor = Color.random
    }
}

extension Color {
    static var random: Color {
        return Color(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1)
        )
    }
}

#Preview {
    FlashCardView()
}
