//
//  Player.swift
//  iOS Bootcamp Challenge
//
//  Created by developer on 04/10/21.
//

import Foundation
import AVFoundation

var player: AVAudioPlayer?

func playPokemonSong() {
    guard let url = Bundle.main.url(forResource: "pokemonSong", withExtension: "mp3") else { return }
    do {
        try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
        try AVAudioSession.sharedInstance().setActive(true)
        player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
        guard let player = player else { return }
        player.play()
    } catch let error {
        print(error.localizedDescription)
    }
}
