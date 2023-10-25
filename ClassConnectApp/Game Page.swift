//
//  Game Page.swift
//  ClassConnectApp
//
//  Created by Erik Mejia on 10/23/23.
//

import SwiftUI

struct Game_Page: View {
    @State private var shouldNavigateToProfilePage = false
    @State private var shouldNavigateToGamePage = false
    @State private var shouldNavigateToAddClass1 = false
    @State private var shouldNavigateToAddClass2 = false
    
    var body: some View {
        NavigationView{
            Game_Page()
                .navigationBarBackButtonHidden(true)
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.blue, Color.orange]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                
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
                
                VStack {
                    Button(action: {
                        shouldNavigateToProfilePage = true
                    }) {
                        VStack {
                            Text("Profile")
                                .foregroundColor(Color.white)
                                .fontWeight(.heavy)
                                .multilineTextAlignment(.center)
                                .font(.system(size: 30))
                                .padding(19)
                                .background(
                                    Capsule()
                                        .fill(
                                            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.clear]), startPoint: .top, endPoint: .bottom)
                                        )
                                )
                                .overlay(
                                    Capsule()
                                        .stroke(Color.black, lineWidth: 4)
                                )
                        }
                    }
                    NavigationLink("", destination: ProfilePage(), isActive: $shouldNavigateToProfilePage)
                }
                .padding(.top, -150)
                
                VStack {
                    Button(action: {
                        shouldNavigateToGamePage = true
                    }) {
                        VStack {
                            Text("Games")
                                .foregroundColor(Color.white)
                                .fontWeight(.heavy)
                                .multilineTextAlignment(.center)
                                .font(.system(size: 30))
                                .padding(19)
                                .background(
                                    Capsule()
                                        .fill(
                                            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.clear]), startPoint: .top, endPoint: .bottom)
                                        )
                                )
                                .overlay(
                                    Capsule()
                                        .stroke(Color.black, lineWidth: 4)
                                )
                        }
                    }
                }
                .padding(.top, 0)
                
                VStack {
                    Text("Add Class")
                        .foregroundColor(Color.white)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .font(.system(size: 30))
                        .padding(19)
                        .background(
                            Capsule()
                                .fill(
                                    LinearGradient(gradient: Gradient(colors: [Color.blue, Color.clear]), startPoint: .top, endPoint: .bottom)
                                )
                        )
                        .overlay(
                            Capsule()
                                .stroke(Color.black, lineWidth: 4)
                        )
                }
                .padding(.top, 250)
                
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Text("Log Out")
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
                    .padding(.trailing, 125)
                }
            }
        }
    }
}
struct Game_Page_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
