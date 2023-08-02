//
//  Question.swift
//  9 Quizzler
//
//  Created by Сергей П on 02.08.2023.
//

import Foundation

struct Question {
    let text: String
    let answers: [String]
    let correct: String
    
    init(q: String, a: [String], correctAnswer: String) {
        text = q
        answers = a
        correct = correctAnswer
    }
}
