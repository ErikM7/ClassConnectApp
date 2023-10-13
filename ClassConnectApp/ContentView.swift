import SwiftUI

extension Color {
    static let skyBlue = Color(red: 0.4627, green: 0.8392, blue: 1.0)
    static let darkPink = Color(red: 208 / 255, green: 45 / 255, blue: 208 / 255)
    static let watermelonPink = Color(red: 0.984375, green: 0.5, blue: 0.64453125)
}

struct ContentView: View {
    var body: some View {
        ZStack {
                    LinearGradient(gradient: Gradient(colors: [Color.blue, Color.orange]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        .ignoresSafeArea()
                    
                    VStack {
                        Text("Main Page")
                            .foregroundColor(Color.white)
                            .fontWeight(.black)
                            .multilineTextAlignment(.center)
                            .font(.system(size: 28))
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
                Text("Profile")
                    .foregroundColor(Color.white)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 25))
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
            .padding(.top, 20)
        }
    }
                
    
}











struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
