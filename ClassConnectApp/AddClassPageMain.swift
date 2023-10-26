import SwiftUI

enum Pin2 {
    case pinOne1, pinTwo2, pinThree3, pinFour4
}

struct AddClassPageMain: View {
    @FocusState private var pinFocusState: Pin2?
    @State private var pinOne1: String = ""
    @State private var pinTwo2: String = ""
    @State private var pinThree3: String = ""
    @State private var pinFour4: String = ""
    @State private var shouldNavigateToMainPage = false
    
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
                .padding(.top, -125)
                
                VStack {
                    Text("Enter 4 Digit Code")
                        .font(.caption)
                        .fontWeight(.bold)
                        .padding(.top)
                    
                    HStack(spacing: 15) {
                        TextField("", text: $pinOne1)
                            .modifier(OtpModifier(pin: $pinOne1, targetPin: .pinOne1))
                            .focused($pinFocusState, equals: .pinOne1)
                        
                        TextField("", text: $pinTwo2)
                            .modifier(OtpModifier(pin: $pinTwo2, targetPin: .pinTwo2))
                            .focused($pinFocusState, equals: .pinTwo2)
                        
                        TextField("", text: $pinThree3)
                            .modifier(OtpModifier(pin: $pinThree3, targetPin: .pinThree3))
                            .focused($pinFocusState, equals: .pinThree3)
                        
                        TextField("", text: $pinFour4)
                            .modifier(OtpModifier(pin: $pinFour4, targetPin: .pinFour4))
                            .focused($pinFocusState, equals: .pinFour4)
                    }
                }
                .padding(.vertical)
                
                Button(action: {
                    // Check if all PIN fields are filled before triggering navigation
                    if pinOne1.count == 1 && pinTwo2.count == 1 && pinThree3.count == 1 && pinFour4.count == 1 {
                        shouldNavigateToMainPage = true
                    }
                }) {
                    HStack {
                        Spacer()
                        Text("Submit")
                            .font(.system(.title3, design: .rounded))
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                        Spacer()
                    }
                    .padding(15)
                    .background(
                        Capsule()
                            .fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.clear]), startPoint: .top, endPoint: .bottom)
                                 )
                            .overlay(
                                Capsule()
                                    .stroke(Color.black, lineWidth: 2)
                            )
                    )
                    .padding(.top, 250)
                }
                NavigationLink("", destination: MainPage(), isActive: $shouldNavigateToMainPage)
                EmptyView()
            }
        }
    
    struct OtpModifier: ViewModifier {
        @Binding var pin: String
        var targetPin: Pin2
        
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
        }
    }
}

struct AddClassPageMain_Previews: PreviewProvider {
    static var previews: some View {
        AddClassPageMain()
    }
}
