//
//  SwiftUIView.swift
//  ClassConnectApp
//
//  Created by Erik Mejia on 10/17/23.
//

import SwiftUI
import Combine

enum FocusPin {
    case pinOne, pinTwo, pinThree, pinFour
}

struct AddClassPage: View {
    
    @FocusState private var pinFocusState: FocusPin?
    @State var pinOne: String = ""
    @State var pinTwo: String = ""
    @State var pinThree: String = ""
    @State var pinFour: String = ""
    

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.orange]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()

            VStack {
                Text("Add Class")
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
                Text("Enter Class Code")
                    .foregroundColor(Color.white)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 30))
                    .padding(10)
                    .background(
                        Rectangle()
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

                Text("Enter 4 Digit Code")
                    .font(.caption)
                    .fontWeight(.thin)
                    .padding(.top)

                HStack(spacing: 15) {
                            TextField("", text: $pinOne)
                                .modifier(OtpModifier(pin: $pinOne, focusState: $pinFocusState, targetPin: .pinOne))

                            TextField("", text: $pinTwo)
                                .modifier(OtpModifier(pin: $pinTwo, focusState: $pinFocusState, targetPin: .pinTwo))

                            TextField("", text: $pinThree)
                                .modifier(OtpModifier(pin: $pinThree, focusState: $pinFocusState, targetPin: .pinThree))

                            TextField("", text: $pinFour)
                                .modifier(OtpModifier(pin: $pinFour, focusState: $pinFocusState, targetPin: .pinFour))
                        }
                }
                .padding(.vertical)

                Button(action: {
                    // Handle verification logic here
                }) {
                    Spacer()
                    Text("Verify")
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                    Spacer()
                }
                .padding(15)
                .background(Color.blue)
                .clipShape(Capsule())
                .padding()
            }
        }
    }

struct OtpModifier: ViewModifier {
    @Binding var pin: String
    @Binding private var focusState: FocusPin
    var targetPin: FocusPin

    func body(content: Content) -> some View {
        content
            .multilineTextAlignment(.center)
            .font(.system(size: 20))
            .padding(10)
            .background(
                Rectangle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color.blue, Color.clear]), startPoint: .top, endPoint: .bottom)
                    )
            )
            .overlay(
                Rectangle()
                    .stroke(Color.black, lineWidth: 2)
            )
            .focused($focusState, equals: targetPin)
            .onChange(of: pin) { newVal in
                if newVal.count == 1 {
                    focusState = targetPin
                } else if newVal.isEmpty, focusState == targetPin {
                    focusState = .pinOne
                }
            }
    }
}













struct AddClassPage_Previews: PreviewProvider {
    static var previews: some View {
        AddClassPage()
    }
}
