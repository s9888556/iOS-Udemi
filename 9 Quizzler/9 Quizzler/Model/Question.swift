//
//  Question.swift
//  9 Quizzler
//
//  Created by Сергей П on 02.08.2023.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
