//
//  VoiceRecorderApp.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/15.
//


import SwiftUI
import AVFoundation
// シミュレータで実行しているうちは問題ありませんが、実機でマイクを使う場合はプロジェクト上でプライバシーに関する設定を追加する必要があります。
//Xcodeのナビゲーションエリアでツリーの最上位を選択し、TARGETSの下に記載されたアプリ名を選択、その後Infoタブを選択してください。
//Custom iOS Target Propertiesの項目で、＋マークをクリックし「Privacy - Microphone Usage Description」の設定を追加します。この設定のValueにマイクを使う理由を記載します。

struct VoiceRecorderApp: View {
    // TODO 作り途中
    @State private var audioRecorder: AVAudioRecorder?
    @State private var audioPlayer: AVAudioPlayer?
    @State private var isRecording = false
    let audioFilename = FileManager.default.temporaryDirectory.appendingPathComponent("recording.m4a")
    
    var body: some View {
        VStack {
            Button(isRecording ? "録音停止" : "録音開始") {
                if isRecording {
                    stopRecording()
                } else {
                    startRecording()
                }
            }
            .padding()
            .background(isRecording ? Color.red : Color.green)
            .foregroundColor(.white)
            .cornerRadius(10)
            
            Button("再生") {
                playRecording()
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            Text("audioFilename: \(audioFilename.path)")
        }
        .navigationTitle("音声録音アプリ")
    }
    
    func startRecording() {
        let settings = [
            AVFormatIDKey: Int(kAudioFormatMPEG4AAC),
            AVSampleRateKey: 44100,
            AVNumberOfChannelsKey: 2,
            AVEncoderAudioQualityKey: AVAudioQuality.high.rawValue
        ]
        
        do {
            audioRecorder = try AVAudioRecorder(url: audioFilename, settings: settings)
            audioRecorder?.record()
            isRecording = true
        } catch {
            print("録音エラー: \(error.localizedDescription)")
        }
    }
    
    func stopRecording() {
        audioRecorder?.stop()
        isRecording = false
    }
    
    func playRecording() {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: audioFilename)
            audioPlayer?.play()
        } catch {
            print("再生エラー: \(error.localizedDescription)")
        }
    }
}

#Preview {
    VoiceRecorderApp()
}
