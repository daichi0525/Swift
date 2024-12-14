//
//  VideoPlayerApp.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/15.
//

import SwiftUI
import AVKit

struct VideoPlayerApp: View {
    var body: some View {
        VStack {
            VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: "sample", withExtension: "mp4")!))
//                .frame(height: 700)
                .padding()
        }
        .navigationTitle("動画再生アプリ")
    }
}

#Preview {
    VideoPlayerApp()
}
