//
//  AnswerRow.swift
//  QuizApp
//
//  Created by Иван Соловьев on 26.04.2024.
//

import SwiftUI

struct AnswerRow: View {
    var text: String
    var body: some View {
        HStack(spacing: 20){
            Image(systemName: "circle.fill")
                .font(.caption)
            Text(text)
                .bold()
            
        }
        .padding()
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
        .background(.gray)
        .cornerRadius(10)
        }
    }

#Preview {
    AnswerRow(text: "Ответ 1")
}
