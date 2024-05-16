//
//  QuizView.swift
//  QuizApp
//
//  Created by Иван Соловьев on 26.04.2024.
//

import SwiftUI

class QuizeNavigation: ObservableObject {
    @Published var isShow: Bool = true
}

struct QuizView: View {
    @Environment(\.dismiss) private var dismiss
    @ObservedObject private var controller: QuizController
    @EnvironmentObject var navigation: QuizeNavigation
    let title: String
    
    init(questions: [Question], title: String) {
        self.title = title
        self.controller = QuizController(questions: questions)
    }
    
    var body: some View {
        VStack{
            HStack{
                Text(self.title)
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
                ForEach(self.controller.answers, id: \.text) { ans in
                    Button {
                        ans.selectAnswer(controller: controller)
                        //self.controller.selectAnswer(answer: ans)
                    } label: {
                        AnswerRow(text: ans.text)
                            .background(controller.answerSelected ? (ans.isCorrect ? Color.green : Color.red) : Color.gray)
                            .cornerRadius(10)
                    }
                    .disabled(self.controller.answerSelected)
                }
            }
            NavigationLink(destination: ResultView(score: self.controller.score, length: self.controller.length), isActive: self.$controller.end) {
                EmptyView()
            }
            Spacer()
            HStack{
                Button(action: {
                    self.navigation.isShow.toggle()
                }) {
                    MainButton(text: "Список тем")
                }
                Button {
                    self.controller.goToNextQuestion()
                } label: {
                    MainButton(text: "Далее")
                        .opacity(controller.answerSelected ? 1 : 0.5)
                }
                .disabled(!self.controller.answerSelected)
            }
            
            Spacer()
        }
        .onChange(of: self.navigation.isShow, { oldValue, newValue in
            self.dismiss()
        })
        .padding()
        .navigationBarHidden(true)
    }
}

#Preview {
    let manager = MockQuizFileManager()
    return QuizView(questions: manager.greek, title: "Title")
}

