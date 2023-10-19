//
//  ProfilePage.swift
//  ClassConnectApp
//
//  Created by Erik Mejia on 10/19/23.
//

import SwiftUI

struct ProfilePage: View {
    @State private var username: String = ""
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.orange]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack {
                Text("Profile")
                    .foregroundColor(Color.white)
                    .fontWeight(.black)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 35))
                    .padding(18)
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
            
            VStack {
                TextField("Grade Level", text: $username)
                    .padding()
                    .border(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.clear]), startPoint: .top, endPoint: .bottom), width: 1.8)
                    
            }
            .padding(.top, 100)
            
            
            
            
            
            
            
            
            
            
            
            
            
        }
        
        
    }
    
    struct ProfilePage_Previews: PreviewProvider {
        static var previews: some View {
            ProfilePage()
        }
    }
}
