//
//  test.swift
//  ClassConnectApp
//
//  Created by Erik Mejia on 10/13/23.
//

import SwiftUI

struct test: View {
    @State private var name: String = ""
    
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
                        
                        InputField(title: "Graduation Year", text: $name)
                        InputField(title: "Favorite Music", text: $name)
                        InputField(title: "Favorite Sport", text: $name)
                    }
                }
            }
        }

struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}
