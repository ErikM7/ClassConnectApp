//
//  SwiftUIView.swift
//  ClassConnectApp
//
//  Created by Erik Mejia on 10/23/23.
//

import SwiftUI

struct SwiftUIView: View {
    @State private var graduationYear: String = ""
        @State private var favoriteMusic: String = ""
        @State private var favoriteSport: String = ""
    var body: some View {
        ZStack {
                    LinearGradient(gradient: Gradient(colors: [Color.blue, Color.orange]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        .ignoresSafeArea()
                    
                    ScrollView {
                        VStack {
                            Text("Main Page")
                                .foregroundColor(Color.white)
                                .fontWeight(.black)
                                .multilineTextAlignment(.center)
                                .font(.system(size: 35))
                                .padding(19)
                                .background(
                                    LinearGradient(gradient: Gradient(colors: [Color.clear, Color.blue]), startPoint: .top, endPoint: .bottom)
                                )
                                .cornerRadius(2)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 2)
                                        .stroke(Color.black, lineWidth: 4)
                                )
                                .shadow(color: Color.white, radius: 25)
                            Spacer()
                        }
                        .padding(.top, 20)
                        
                        Text("Enter 4 Digit Code")
                            .font(.system(size: 18))
                            .fontWeight(.bold)
                            .padding(.top, -20)
                        
                        InputField(title: "Graduation Year", text: $graduationYear)
                        InputField(title: "Favorite Music", text: $favoriteMusic)
                        InputField(title: "Favorite Sport", text: $favoriteSport)
                    }
                }
            }
        }

        struct InputField: View {
            var title: String
            @Binding var text: String
            
            var body: some View {
                VStack {
                    Text(title)
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                        .padding(.top, 10)
                    TextField(title, text: $text)
                        .padding()
                        .border(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.clear]), startPoint: .top, endPoint: .bottom), width: 1.8)
                }
                .padding(.top, 10)
            }
        }

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
