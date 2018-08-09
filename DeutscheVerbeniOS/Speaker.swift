//
//  Speaker.swift
//  DeutscheVerbeniOS
//
//  Created by xengar on 2018-08-09.
//  Copyright © 2018 xengar. All rights reserved.
//

import Foundation
import AVFoundation

// MARK: - Speaker
class Speaker {
    
    // MARK: Properties
    let synthesizer = AVSpeechSynthesizer()
    var voice : AVSpeechSynthesisVoice!
    
    
    // MARK: Initializer
    init(_ language : String) {
        self.voice = AVSpeechSynthesisVoice(language: language)
    }
    
    deinit {
        voice = nil
    }
    
    // Speak the string
    func speak(_ text : String) {
        // https://www.hackingwithswift.com/example-code/media/how-to-convert-text-to-speech-using-avspeechsynthesizer-avspeechutterance-and-avspeechsynthesisvoice
        
        // You can omit the rate property entirely to have a natural-speed voice, or change the language to "en-GB",  "en-US" (English, American accent), "en-IE" (English, Irish accent), "en-AU" (English, Australian accent) or whichever other accents Apple chooses to add in the future.
        // Available from iOS 7.0
        
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = self.voice
        //utterance.rate = 0.1
        
        self.synthesizer.speak(utterance)
    }
    
}
