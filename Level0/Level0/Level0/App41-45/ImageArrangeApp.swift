//
//  ImageArrangeApp.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/15.
//

import SwiftUI

struct ImageArrangeApp: View {
    @State private var images = ["photo", "star", "heart" , "paperplane" , "pencil"].shuffled() //  , "trash" , "pencil.circle", "pencil.circle.fill" , "pencil.slash"

    var body: some View {
        VStack {
            ScrollView {
                Spacer()
                .padding()
                ForEach(images, id: \.self) { image in
                    Image(systemName: image)
                        .resizable()
                        .frame(width: 50, height: 50)
                        .padding()
                }

                Button("シャッフル") {
                    images.shuffle()
                }
                .padding()
                .background(Color.orange)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
        }
        .navigationTitle("画像並べ替えアプリ")
    }
}

#Preview {
    ImageArrangeApp()
}
