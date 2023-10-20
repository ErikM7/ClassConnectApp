import SwiftUI

struct ProfilePage: View {
    @State private var name: String = ""
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.orange]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack {
                Text("Main Page")
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
                Text("Enter 4 Digit Code")
                    .font(.system(size: 18))
                    .fontWeight(.bold)
                    .padding(.top)
            }
            .padding(.top, -200)
            VStack {
                TextField("Graduation Year", text: $name)
                    .padding()
                    .border(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.clear]), startPoint: .top, endPoint: .bottom), width: 1.8)
            }
            .padding(.top, -150)
            
            VStack {
                Text("Favorite Music")
                    .font(.system(size: 18))
                    .fontWeight(.bold)
                    .padding(.top)
            }
            .padding(.top, -75)
            VStack {
                TextField("Favorite Music", text: $name)
                    .padding()
                    .border(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.clear]), startPoint: .top, endPoint: .bottom), width: 1.8)
            }
            .padding(.top, 10)
            
            VStack {
                Text("Favorite Sport")
                    .font(.system(size: 18))
                    .fontWeight(.bold)
                    .padding(.top)
            }
            .padding(.top, 133)
            VStack {
                TextField("Favorite Sport", text: $name)
                    .padding()
                    .border(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.clear]), startPoint: .top, endPoint: .bottom), width: 1.8)
            }
            .padding(.top, 250)
            
            VStack {
                Text("Favorite Sport")
                    .font(.system(size: 18))
                    .fontWeight(.bold)
                    .padding(.top)
            }
            .padding(.top, 380)
            VStack {
                TextField("Favorite Sport", text: $name)
                    .padding()
                    .border(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.clear]), startPoint: .top, endPoint: .bottom), width: 1.8)
            }
            .padding(.top, 500)
            
            
            
            
            
            
            
            
        }
    }
    }
struct ProfilePage_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePage()
    }
}
