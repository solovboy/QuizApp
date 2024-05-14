//
//  Topic.swift
//  QuizApp
//
//  Created by Иван Соловьев on 28.04.2024.
//

import Foundation

struct Topic: Identifiable, Decodable{
    var id: UUID = UUID()
    var text: String
    var questions: [Question]
    
}
