//
//  Question.swift
//  Project - Quizzler App
//
//  Created by Rudrank Riyam on 17/06/18.
//  Copyright © 2018 iOS-Projects. All rights reserved.
//

import Foundation

class Question {
    let questionText : String
    let answer : Bool
    
    init(text : String, correctAnswer : Bool) {
        questionText = text
        answer = correctAnswer
    }
}
