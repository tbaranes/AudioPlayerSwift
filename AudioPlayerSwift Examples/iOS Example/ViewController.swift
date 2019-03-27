//
//  ViewController.swift
//  AudioPlayer Sample
//
//  Created by Tom Baranes on 15/01/16.
//  Copyright © 2016 tbaranes. All rights reserved.
//

import UIKit
import AudioPlayerSwift

class ViewController: UIViewController {

    // MARK: Properties

    var sound1: AudioPlayer?
    var sound2: AudioPlayer?

    // MARK: Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        do {
            sound1 = try AudioPlayer(fileName: "sound1.caf")
            sound2 = try AudioPlayer(fileName: "sound2.caf")
        } catch {
            print("Sound initialization failed")
        }

        NotificationCenter.default.addObserver(self,
                                               selector: #selector(handleCompletion(_:)),
                                               name: AudioPlayer.SoundDidFinishPlayingNotification,
                                               object: nil)
    }

    @objc
    func handleCompletion(_ notification: Notification) {
        if let audioPlayer = notification.object as? AudioPlayer,
           let name = audioPlayer.name,
           let success = notification.userInfo?[AudioPlayer.SoundDidFinishPlayingSuccessfully] {
            print("AudioPlayer with name '\(name)' did finish playing with success: \(success)")
        }
    }

    // MARK: IBAction

    @IBAction func playSound1Pressed(sender: AnyObject) {
        sound1?.play()
    }

    @IBAction func playSound2Pressed(sender: AnyObject) {
        sound2?.play()
    }

    @IBAction func stopSound1Pressed(sender: AnyObject) {
        sound1?.stop()
    }

    @IBAction func stopSound2Pressed(sender: AnyObject) {
        sound2?.stop()
    }

    @IBAction func sound1LoopPressed(sender: UISwitch) {
        sound1?.numberOfLoops = sender.isOn ? -1 : 0
    }

    @IBAction func sound2LoopPressed(sender: UISwitch) {
        sound2?.numberOfLoops = sender.isOn ? -1 : 0
    }

    @IBAction func sound1VolumeValueDidChange(sender: UISlider) {
        sound1?.volume = sender.value
    }

    @IBAction func sound2VolumeValueDidChange(sender: UISlider) {
        sound2?.volume = sender.value
    }

}
