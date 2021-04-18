//
//  PLaySound.swift
//  Slot Machine
//
//  Created by Stanly Shiyanovskiy on 15.04.2021.
//

import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("ERROR: Couldn't find and play the sound file!")
        }
    }
}
