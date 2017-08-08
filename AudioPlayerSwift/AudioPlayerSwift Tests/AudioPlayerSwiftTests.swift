//
//  AudioPlayerSwiftTests.swift
//  AudioPlayerSwift
//
//  Created by Tom Baranes on 26/06/16.
//  Copyright © 2016 Tom Baranes. All rights reserved.
//

import XCTest
import AudioPlayerSwift

final class AudioPlayerSwiftTests: XCTestCase {

    // MARK: Properties

    var soundPath: String?
    var audioPlayer: AudioPlayer?

    // MARK: Life cycle

    override func setUp() {
        super.setUp()
        let testBundle = Bundle(for: type(of: self))
        soundPath = testBundle.path(forResource: "sound1", ofType: "caf")

        do {
            audioPlayer = try AudioPlayer(contentsOfPath: soundPath ?? "")
        } catch {
            XCTAssertFalse(false)
        }
    }

    override func tearDown() {
        super.tearDown()
    }

}

// MARK: Initializers

extension AudioPlayerSwiftTests {

    func testInit_withValidPath() {
        do {
            _ = try AudioPlayer(contentsOfPath: soundPath ?? "")
        } catch {
            XCTFail()
        }
    }

    func testInvalidFileName() {
        do {
            _ = try AudioPlayer(contentsOfPath: "")
            XCTFail()
        } catch {

        }
    }

}

// MARK: Sound State

extension AudioPlayerSwiftTests {

//    func testPlaySound() {
//        audioPlayer?.play()
//        XCTAssertTrue(audioPlayer?.isPlaying ?? false)
//    }

    func testStopSound() {
        audioPlayer?.play()
        audioPlayer?.stop()
        XCTAssertFalse(audioPlayer?.isPlaying ?? true)
    }

}

// MARK: Callbacks

extension AudioPlayerSwiftTests {

    func testAudioDidFinishCompletion() {
        audioPlayer?.completionHandler = { didFinish in
            XCTAssertFalse(didFinish)
        }
        audioPlayer?.play()
        audioPlayer?.stop()

        audioPlayer?.play()
        audioPlayer?.completionHandler = { didFinish in
            XCTAssertTrue(didFinish)
        }
    }

    func testAudioDidFinishNotification() {
        let name = AudioPlayer.SoundDidFinishPlayingNotification
        NotificationCenter.default.addObserver(forName: name, object: nil, queue: nil) { _ in
            XCTAssertTrue(true)
        }

        audioPlayer?.play()
        audioPlayer?.stop()
    }

}
