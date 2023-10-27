import SwiftUI

struct MainPage: View {
    @State private var shouldNavigateToProfilePage = false
    @State private var shouldNavigateToGame_Page = false
    @State private var shouldNavigateToAddClassPageMain = false
    @State private var isLoggedOut = false
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
                Button(action: {
                    // Set the boolean to true to trigger navigation
                    shouldNavigateToProfilePage = true
                }) {
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
                                        LinearGradient(gradient: Gradient(colors: [Color.blue, Color.clear]), startPoint: .top, endPoint: .bottom)
                                    )
                            )
                            .overlay(
                                Capsule()
                                    .stroke(Color.black, lineWidth: 4)
                            )
                    }
                    
                }
                NavigationLink("", destination: ProfilePage(), isActive: $shouldNavigateToProfilePage)
            }
            .padding(.top, -150)
            
            VStack {
                Button(action: {
                    shouldNavigateToGame_Page = true
                }) {
                    VStack {
                        Text("Games")
                            .foregroundColor(Color.white)
                            .fontWeight(.heavy)
                            .multilineTextAlignment(.center)
                            .font(.system(size: 30))
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
                }
                
                NavigationLink("", destination: Game_Page(), isActive: $shouldNavigateToGame_Page)
            }
            .padding(.top, 0)
            
            VStack {
                Button(action: {
                    shouldNavigateToAddClassPageMain = true
                }) {
                    VStack {
                        Text("Add Class")
                            .foregroundColor(Color.white)
                            .fontWeight(.heavy)
                            .multilineTextAlignment(.center)
                            .font(.system(size: 30))
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
                }
                NavigationLink("", destination: AddClassPageMain(), isActive: $shouldNavigateToAddClassPageMain)
                EmptyView()
            }
            .padding(.top, 250)
            
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {
                    }) {
                        // Button content
                        Text("Log Out")
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
                    .padding(.trailing, 125)
                    .background(
                                NavigationLink("", destination: AddClassPage(), isActive: $isLoggedOut)
               )}
                
            }
            
            
        }
        
    }
}






struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
