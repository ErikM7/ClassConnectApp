//
//  SwiftUIView.swift
//  ClassConnectApp
//
//  Created by Erik Mejia on 10/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Custom Color in SwiftUI")
                .font(.largeTitle) // Set the font size as needed
                .foregroundColor(Color.white)
                .fontWeight(.bold)
                .padding()
                .background(Color.teal)
                .cornerRadius(10)
                .shadow(color: Color.white, radius: 20)
        }
        
    }
}

