//
//  OpeningView.swift
//  QuizApp
//
//  Created by Иван Соловьев on 25.04.2024.
//

import SwiftUI

struct OpeningView: View {
    @State private var topic = ""
    var body: some View {
        NavigationView{
            VStack(spacing: 40){
                VStack(alignment: .center, spacing:20){

                    Text("Викторина по Мировым мифологиям")
                        .font(.title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .multilineTextAlignment(.center)
                    
                    Text("Для начала игры нужно выбрать интересующую вас мифологию:")
                        .font(.title2)
                        .multilineTextAlignment(.center)
                    
                }
                
                Spacer()
                    .frame(height: 10)
                
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20) {
                    Button(action: {
                        topic = "scan"
                    }) {
                        NavigationLink(destination: QuizView()) {
                            MainButton(text: "Скандинавия")
                        }
                    }
                    Button(action: {
                        topic = "gre"
                    }) {
                        NavigationLink(destination: QuizView()) {
                            MainButton(text: "Греческая")
                        }
                    }
                    Button(action: {
                        topic = "egpt"
                    }) {
                        NavigationLink(destination: QuizView()) {
                            MainButton(text: "Египетская")
                        }
                    }
                }
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    OpeningView()
}
