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
        ZStack {
                    Color.blue
                        .ignoresSafeArea()
                    
            VStack(alignment: .leading) {
                Text("Chemistry")
                    .font(.largeTitle)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.orange/*@END_MENU_TOKEN@*/)
                Text("Language")
                    .font(.largeTitle)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.orange/*@END_MENU_TOKEN@*/)
                Text("Arts")
                    .font(.largeTitle)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.orange/*@END_MENU_TOKEN@*/)
                Text("Science")
                    .font(.largeTitle)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Text("Social Studies")
                    .font(.largeTitle)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    
                HStack {
                    Text("Placeholder")
                        //.font(.subheadline)
                   // Text("Another place Holder")
                      //  .font(.subheadline)
                }
            }
    //    VStack(alignment: .leading) {
         //   Text("Chemistry")
             //   .font(.largeTitle)
               // .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
           // Text("Language")
            //    .font(.largeTitle)
            //    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
          // Text("Arts")
             //   .font(.largeTitle)
             //   .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            //Text("Science")
              //  .font(.largeTitle)
              //  .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
           // Text("Social Studies")
                //.font(.largeTitle)
                //.foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                
          //  HStack {
              //  Text("Placeholder")
                    //.font(.subheadline)
               // Text("Another place Holder")
                  //  .font(.subheadline)
            }
        }
    }


// I replaced What used to be here with this nicer code to preview
