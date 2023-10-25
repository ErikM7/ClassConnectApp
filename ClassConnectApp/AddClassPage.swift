import SwiftUI

enum FocusPin {
    case pinOne, pinTwo, pinThree, pinFour
}

struct AddClassPage: View {
    
    @FocusState private var pinFocusState: FocusPin?
    @State var pinOne: String = ""
    @State var pinTwo: String = ""
    @State var pinThree: String = ""
    @State var pinFour: String = ""
    @State private var shouldNavigateToNamePage = false
    
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
                        TextField("", text: $pinOne)
                            .modifier(OtpModifier(pin: $pinOne, targetPin: .pinOne))
                            .focused($pinFocusState, equals: .pinOne)
                        
                        TextField("", text: $pinTwo)
                            .modifier(OtpModifier(pin: $pinTwo, targetPin: .pinTwo))
                            .focused($pinFocusState, equals: .pinTwo)
                        
                        TextField("", text: $pinThree)
                            .modifier(OtpModifier(pin: $pinThree, targetPin: .pinThree))
                            .focused($pinFocusState, equals: .pinThree)
                        
                        TextField("", text: $pinFour)
                            .modifier(OtpModifier(pin: $pinFour, targetPin: .pinFour))
                            .focused($pinFocusState, equals: .pinFour)
                    }
                }
                .padding(.vertical)
                VStack {
                    Button(action: {
                        // Check if all PIN fields are filled before triggering navigation
                        if pinOne.count == 1 && pinTwo.count == 1 && pinThree.count == 1 && pinFour.count == 1 {
                            shouldNavigateToNamePage = true
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
                        NavigationLink("", destination: NamePage(), isActive: $shouldNavigateToNamePage)
                            .navigationBarBackButtonHidden(true)
                        }
                    }
                }
            }
        }
        
        struct OtpModifier: ViewModifier {
            @Binding var pin: String
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
            }
        }
    struct AddClassPage_Previews: PreviewProvider {
        static var previews: some View {
            AddClassPage()
        }
    }
