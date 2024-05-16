//
//  Topic.swift
//  QuizApp
//
//  Created by Иван Соловьев on 28.04.2024.
//

import Foundation

struct Topic: Decodable{
    var text: String
    var questions: [Question]
    
}
