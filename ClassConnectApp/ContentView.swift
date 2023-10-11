//
//  ContentView.swift
//  ClassConnectApp
//
//  Created by Erik Mejia on 10/2/23.
//

import SwiftUI


        extension Color {
            static let skyBlue = Color(red: 0.4627, green: 0.8392, blue: 1.0)
            static let darkPink = Color(red: 208 / 255, green: 45 / 255, blue: 208 / 255)
        }
        
struct ContentView: View {
    var body: some View {
        
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.orange]), startPoint: .topLeading, endPoint: .bottomTrailing)
            ignoresSafeArea()
            HStack {
                Text("Main Page")
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
                    .font(.body)
                    .padding()
            }
            .padding()
            .background(Color.teal)
            .cornerRadius(10)
            .shadow(color: Color.white, radius: 20)
            }.ignoresSafeArea()
               }
            
        }
    
