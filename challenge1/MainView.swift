import SwiftUI

struct MainView: View {
    @State var isActive = true
    @State var isNewUser: Bool = UserDefaults.standard.bool(forKey: "isNewUser") // Check if it's a new user
    @StateObject var streakManager = StreakManager()

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
                                
                                NavigationLink(destination: SocialIsolationView().environmentObject(streakManager)) {
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

                                NavigationLink(destination: ProcrastinationView().environmentObject(streakManager)) {
                                    Text("Procrastination")
                                        .font(.system(size: 34, weight: .semibold, design: .rounded))
                                        .foregroundColor(Color("off_White"))
                                }
                            }
                        }
                        .padding()
                    }
                }


            }
        }.navigationBarBackButtonHidden(true)
            .onAppear {
            // Initialize UserDefaults if it hasn't been set yet
            if UserDefaults.standard.object(forKey: "isNewUser") == nil {
                UserDefaults.standard.set(true, forKey: "isNewUser")
                isNewUser = true
            }
        }
    }
}

#Preview {
   MainView()
}
