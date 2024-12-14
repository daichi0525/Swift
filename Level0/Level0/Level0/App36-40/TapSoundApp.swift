//
//  TapSoundApp.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/15.
//

import SwiftUI
import AVFoundation

struct TapSoundApp: View {
    @State private var player: AVAudioPlayer?

    var body: some View {
        VStack {
            Text("画面をタップすると音が鳴ります")
                .font(.title)
                .padding()
        }
        .contentShape(Rectangle())
        .onTapGesture {
            playSound()
        }
        .navigationTitle("タップ音アプリ")
    }

    func playSound() {
        guard let url = Bundle.main.url(forResource: "click", withExtension: "mp3") else { return }
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch {
            print("音声再生エラー: \(error.localizedDescription)")
        }
    }
}

#Preview {
    TapSoundApp()
}
