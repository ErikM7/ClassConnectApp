//
//  Nextpage.swift
//  ClassConnectApp
//
//  Created by LCHS CSIT 24 on 10/4/23.
//

import SwiftUI

struct Nextpage: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.darkPink, Color.teal]), startPoint: .topLeading, endPoint: .bottomTrailing)
            HStack {
                Image(systemName: "swift")
                    .foregroundColor(Color.darkPink)
                    .font(.system(size: 35))
                    .shadow(radius: 10)
                Text("Custom Color in SwiftUI")
                    .foregroundColor(Color.white)
                    .fontWeight(.bold)
            }
        }
        
    }
}
