import SwiftUI

struct ProfilePage2: View {
    @State private var favoriteSubject: String = ""
    @State private var favoriteFood: String = ""
    @State private var favoriteMovie: String = ""
    @State private var describeYourself: String = ""
    @State private var shouldNavigateToMainPage = false
    var body: some View {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.blue, Color.orange]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                
                ScrollView {
                    VStack {
                        Text("Profile Page")
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
                    
                    Text("Favorite Subject")
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                        .padding(.top, 35)
                    
                    InputField1(title: "Favorite Subject", text: $favoriteSubject)
                    
                    Text("Favorite Food")
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                        .padding(.top, 18)
                    
                    InputField1(title: "Favorite Food", text: $favoriteFood)
                    
                    Text("Favorite Movie")
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                        .padding(.top, 18)
                    
                    InputField1(title: "Favorite Movie", text: $favoriteMovie)
                    
                    Text("Describe yourself in one word")
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                        .padding(.top, 18)
                    
                    InputField1(title: "Describe yourself in one word", text: $describeYourself)
                    
                }
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Button(action: {shouldNavigateToMainPage = true
                        }) {
                            // Button content
                            Text("Submit Profile")
                                .foregroundColor(Color.white)
                                .fontWeight(.heavy)
                                .multilineTextAlignment(.trailing)
                                .font(.system(size: 25))
                                .padding(19)
                                .background(
                                    Capsule()
                                        .fill(
                                            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.orange]), startPoint: .top, endPoint: .bottom)
                                        )
                                )
                                .overlay(
                                    Capsule()
                                        .stroke(Color.black, lineWidth: 4)
                                )
                        }
                        .padding(.trailing, 90)
                        .background(
                                NavigationLink("", destination: MainPage(), isActive: $shouldNavigateToMainPage)
                   )}
                    
                }
            }
        }
    
    struct InputField1: View {
        var title: String
        @Binding var text: String
        
        var body: some View {
            VStack {
                TextField(title, text: $text)
                    .padding()
                    .border(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.clear]), startPoint: .top, endPoint: .bottom), width: 1.8)
            }
            .padding(.top, 16)
        }
    }
}
struct ProfilePage2_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePage2()
    }
}

