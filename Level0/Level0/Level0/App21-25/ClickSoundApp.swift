//
//  ClickSoundApp.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/12.
//

import SwiftUI
import AVFoundation
//備考:
//click.mp3 ファイルをプロジェクトの Assets に追加してください。

struct ClickSoundApp: View {
    @State private var audioPlayer: AVAudioPlayer?

    var body: some View {
        Button("クリック音を鳴らす") {
            playSound()
        }
        .padding()
        .background(Color.orange)
        .foregroundColor(.white)
        .cornerRadius(10)
        .navigationTitle("クリック音アプリ")
    }

    func playSound() {
        if let soundURL = Bundle.main.url(forResource: "click", withExtension: "mp3") {
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
                audioPlayer?.play()
            } catch {
                print("音声ファイルが見つかりません")
            }
        }
    }
}

#Preview {
    ClickSoundApp()
}
