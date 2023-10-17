//
//  SwiftUIView.swift
//  ClassConnectApp
//
//  Created by Erik Mejia on 10/17/23.
//

import SwiftUI
import Combine

struct AddClassPage: View {
    
    
    enum FocusPin {
            case  pinOne, pinTwo, pinThree, pinFour
        }
        
        @FocusState private var pinFocusState : FocusPin?
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
                    .font(.system(size: 30)) // Decrease the font size
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
                
                            Text("Verify your Email Address")
                                .font(.title2)
                                .fontWeight(.semibold)
                            
                               
                            Text("Enter 4 digit code we'll text you on Email")
                                .font(.caption)
                                .fontWeight(.thin)
                                .padding(.top)
                           
                            HStack(spacing:15, content: {
                                
                                TextField("", text: $pinOne)
                                    .modifier(OtpModifier(pin:$pinOne))
                                    .onChange(of:pinOne){newVal in
                                        if (newVal.count == 1) {
                                            pinFocusState = .pinTwo
                                        }
                                    }
                                    .focused($pinFocusState, equals: .pinOne)
                                
                                TextField("", text:  $pinTwo)
                                    .modifier(OtpModifier(pin:$pinTwo))
                                    .onChange(of:pinTwo){newVal in
                                        if (newVal.count == 1) {
                                            pinFocusState = .pinThree
                                        }else {
                                            if (newVal.count == 0) {
                                                pinFocusState = .pinOne
                                            }
                                        }
                                    }
                                    .focused($pinFocusState, equals: .pinTwo)

                                
                                TextField("", text:$pinThree)
                                    .modifier(OtpModifier(pin:$pinThree))
                                    .onChange(of:pinThree){newVal in
                                        if (newVal.count == 1) {
                                            pinFocusState = .pinFour
                                        }else {
                                            if (newVal.count == 0) {
                                                pinFocusState = .pinTwo
                                            }
                                        }
                                    }
                                    .focused($pinFocusState, equals: .pinThree)

                                
                                TextField("", text:$pinFour)
                                    .modifier(OtpModifier(pin:$pinFour))
                                    .onChange(of:pinFour){newVal in
                                        if (newVal.count == 0) {
                                            pinFocusState = .pinThree
                                        }
                                    }
                                    .focused($pinFocusState, equals: .pinFour)

                                    
                            })
                            .padding(.vertical)
                        
                            
                            Button(action: {}, label: {
                                Spacer()
                                Text("Verify")
                                    .font(.system(.title3, design: .rounded))
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                Spacer()
                            })
                            .padding(15)
                            .background(Color.blue)
                            .clipShape(Capsule())
                            .padding()
                        }
            struct OtpModifier: ViewModifier {
                @Binding var pin: String
                @Binding var focusState: AddClassPage.FocusPin
                var targetPin: AddClassPage.FocusPin

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
                            } else if newVal.count == 0, focusState == targetPin {
                                focusState = .pinOne
                            }
                        }
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
           
        }
    }
}














struct AddClassPage_Previews: PreviewProvider {
    static var previews: some View {
        AddClassPage()
    }
}
