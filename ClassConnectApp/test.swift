//
//  test.swift
//  ClassConnectApp
//
//  Created by Erik Mejia on 10/13/23.
//

import SwiftUI

struct test: View {
    var body: some View {
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
                                        LinearGradient(gradient: Gradient(colors: [Color.clear, Color.blue]), startPoint: .top, endPoint: .bottom)
                                    )
                            )
                            .overlay(
                                Capsule()
                                    .stroke(Color.black, lineWidth: 4))
           }
    }
}

struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}
