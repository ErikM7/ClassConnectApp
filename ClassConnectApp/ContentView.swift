//
//  ContentView.swift
//  ClassConnectApp
//
//  Created by Erik Mejia on 10/2/23.
//

import SwiftUI

//Simpler template ~ jose
struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Welcome to the app")
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
            HStack {
                Text("Placeholder")
                    .font(.subheadline)
                Text("Another place Holder")
                    .font(.subheadline)
            }
        }
    }
}

// I replaced What used to be here with this nicer code to preview
#Preview {
    ContentView()
}
