//
//  QuizView.swift
//  QuizApp
//
//  Created by Иван Соловьев on 26.04.2024.
//

import SwiftUI

struct QuizView: View {
    @Environment(\.dismiss) private var dismiss
    @ObservedObject private var controller: QuizController
    
    init(question: [Question]) {
        self.controller = QuizController(questions: question)
    }
    
    var body: some View {
        VStack{
            HStack{
                Text("Quiz Game Topic")
                    .font(.title2)
                    .bold()
                Spacer()
                Text("\(controller.index + 1) out of \(controller.length)")
                    .fontWeight(.heavy)
            }
            Spacer()
            VStack(alignment: .leading, spacing: 20){
                Text(self.controller.question)
                    .font(.system(size: 25))
                    .bold()
                Spacer()
                    .frame(height: 10)
                ForEach(self.controller.answers) { ans in
                    Button {
                        self.controller.selectAnswer(answer: ans)
                    } label: {
                        AnswerRow(text: ans.text)
                            .background(controller.answerSelected ? (ans.isCorrect ? Color.green : Color.red) : Color.gray)
                            .cornerRadius(10)
                    }
                    .disabled(self.controller.answerSelected)
                }
            }
            Spacer()
            HStack{
                Button(action: {
                    self.dismiss()
                }) {
                    MainButton(text: "Список тем")
                }
                Button {
                    self.controller.goToNextQuestion()
                } label: {
                    MainButton(text: "Далее")
                }
                .disabled(!self.controller.answerSelected)
            }
            
            Spacer()
        }
        .padding()
        .navigationBarHidden(true)
        
    }
}

#Preview {
    let manager = MockQuizFileManager()
    return QuizView(question: manager.greek)
}

