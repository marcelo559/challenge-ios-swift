//
//  Question.swift
//  Curious-D2
//
//  Created by Marcelo Campos on 11/03/25.
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
