# Changelog

All notable changes to the project will be documented in this file.

---

## Next

#### API breaking changes

N/A

#### Enhancements

N/A

#### Bugfixes

N/A

## [2.0.0](https://github.com/tbaranes/AudioPlayerSwift/releases/tag/2.0.0) (27-03-2019)

#### API breaking changes

- Swift 5 and Xcode 10.2 support

#### Enhancements

- Swift 4 and Xcode 9 support
- Swift 4.2 and Xcode 10 support
- SoundDidFinishPlayingNotification now includes SoundDidFinishPlayingSuccessfully boolean in the notification's userInfo

## [1.6.0](https://github.com/tbaranes/AudioPlayerSwift/releases/tag/1.6.0) (09-08-2017)

#### Enhancements

- Using one target to generate iOS, macOS, and tvOS framework

#### Bugfixes

- Carthage won't failed anymore due to code signin

## [1.5.2](https://github.com/tbaranes/AudioPlayerSwift/releases/tag/1.5.2) (28-12-2016)

#### Enhancements

- Added a delay parameter to the start function

## [1.5.1](https://github.com/tbaranes/AudioPlayerSwift/releases/tag/1.5.1) (30-11-2016)

#### Bugfixes

- Fixed handleFadeTo to avoid an infinite calls situation

## [1.5.0](https://github.com/tbaranes/AudioPlayerSwift/releases/tag/1.5.0) (23-09-2016)

#### Enhancements

- Carthage support

## [1.4.0](https://github.com/tbaranes/AudioPlayerSwift/releases/tag/1.4.0) (11-09-2016)

#### API breaking changes

- Swift 3 support. README is up to date, please report if you find any diffs
- Some APIs have been updated to be more swifty, check out the README for more information

## [1.3.0](https://github.com/tbaranes/AudioPlayerSwift/releases/tag/1.3.0) (24-03-2016)

- Swift 2.2 support
- Fixed `fadeTo`

## [1.2.2](https://github.com/tbaranes/AudioPlayerSwift/releases/tag/1.2.1) (08-02-2016)

- Make the object name mutables (by default, the audio file will be used) - [#3](https://github.com/tbaranes/AudioPlayerSwift/pull/3)

## [1.2.1](https://github.com/tbaranes/AudioPlayerSwift/releases/tag/1.2.1) (05-02-2016)

- `completionHandler` is now a public property


## [1.2.0](https://github.com/tbaranes/SwiftyUtils/releases/tag/1.2.0) (02-02-2016)

- Add initializer from NSURL - [#1](https://github.com/tbaranes/AudioPlayerSwift/pull/1)
