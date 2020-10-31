//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation



class ViewController: UIViewController {
    var player: AVAudioPlayer!

    @IBAction func keyPressed(_ sender: UIButton) {
        if let currentTitle = sender.currentTitle {
            let url = Bundle.main.url(forResource: currentTitle, withExtension: "wav")!
            player = try! AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.wav.rawValue)
            player.play()
        }
    }
}

