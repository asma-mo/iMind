import SwiftUI

struct MainView: View {
    @State var isActive = true
    @State var isNewUser = UserDefaults.standard.bool(forKey: "isNewUser") // Check if it's a new user

    var body: some View {
        NavigationView {
            ZStack {
                MainTamplateView(title: "Choose") {
                    ZStack {
                        VStack {
                            ZStack {
                                Rectangle()
                                    .frame(width: 300, height: 100)
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(Color("Main_Purple"))
                                    .cornerRadius(30)
                                
                                NavigationLink(destination: SocialIsolationView()) {
                                    Text("Social Isolation")
                                        .font(.system(size: 34, weight: .semibold, design: .rounded))
                                        .foregroundColor(Color("off_White"))
                                }
                            }
                            .padding(.top, 90)

                            ZStack {
                                Rectangle()
                                    .frame(width: 300, height: 100)
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(Color("Main_Purple"))
                                    .cornerRadius(30)

                                NavigationLink(destination: ProcrastinationView()) {
                                    Text("Procrastination")
                                        .font(.system(size: 34, weight: .semibold, design: .rounded))
                                        .foregroundColor(Color("off_White"))
                                }
                            }
                        }
                        .padding()
                    }
                }

                // Show the splash screen if the user is new
                if isNewUser {
                    OnboardingViews(isNewUser: $isNewUser)
                } else if isActive {
                    SplashView(isActive: $isActive)
                }
            }
        }.navigationBarBackButtonHidden(true)
    }
}

#Preview {
   MainView()
}
