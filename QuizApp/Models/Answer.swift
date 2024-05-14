//
//  Answer.swift
//  QuizApp
//
//  Created by Иван Соловьев on 26.04.2024.
//

import Foundation

struct Answer: Identifiable{
    var id: UUID = UUID()
    var text: String
    var isCorrect: Bool
}
