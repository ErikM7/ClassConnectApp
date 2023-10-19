//
//  Nextpage.swift
//  ClassConnectApp
//
//  Created by LCHS CSIT 24 on 10/4/23.
//

import SwiftUI

struct NamePage: View {
    @State private var username: String = ""
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.orange]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack {
                Text("Name")
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
            
            VStack {
                Text("Enter your first and last name")
                    .foregroundColor(Color.white)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 20)) // Decrease the font size
                    .padding(10)
                    .background(
                        Rectangle() // Use Rectangle shape to create a rectangle background
                            .fill(
                                LinearGradient(gradient: Gradient(colors: [Color.blue, Color.clear]), startPoint: .top, endPoint: .bottom)
                            )
                    )
                    .overlay(
                        Rectangle()
                            .stroke(Color.black, lineWidth: 2)
                    )
            }
            .padding(.top, -50)

            VStack {
                TextField("First and Last Name", text: $username)
                    .padding()
                    .border(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.clear]), startPoint: .top, endPoint: .bottom), width: 1.8)
                    
            }
            .padding(.top, 100)
            
            VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Text("Back")
                            .foregroundColor(Color.white)
                            .fontWeight(.heavy)
                            .multilineTextAlignment(.trailing)
                            .font(.system(size: 25))
                            .padding(19)
                            .background(
                                Capsule()
                                    .fill(
                                        LinearGradient(gradient: Gradient(colors: [Color.blue, Color.orange]), startPoint: .top, endPoint: .bottom)
                                    )
                            )
                            .overlay(
                                Capsule()
                                    .stroke(Color.black, lineWidth: 4)
                            )
                    }
                    .padding(.trailing, 275)
                }
            
            
            
        }
    }
}
        struct NamePage_Previews: PreviewProvider {
            static var previews: some View {
                NamePage()
                
            }
        }
