import SwiftUI

struct ProcrastinationView: View {
    @EnvironmentObject var streakManager: StreakManager
    @Environment(\.dismiss) var dismiss
    
    func getCurrentDateString() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter.string(from: Date())
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                // Main content
                TamplateView(title: "") {
                    // Your program content
                    VStack {
                        Text("Procrastination")
                            .foregroundColor(Color("off_White"))
                            .font(.system(size: 36, weight: .bold, design: .rounded))
                            .padding(.trailing, 30)
                            .padding(.top, 39)
                        Spacer()

                        
                        VStack {
                            Spacer()
                            
                            ZStack {
                                Rectangle()
                                    .frame(width: 300, height: 100)
                                    .foregroundColor(Color("Main_Purple"))
                                    .cornerRadius(30)
                                
                                NavigationLink(destination: SocialPracticeView()) {
                                    Text("Practice")
                                        .font(.system(size: 34, weight: .semibold, design: .rounded))
                                        .foregroundColor(Color("off_White"))
                                }
                            }
                            Spacer().frame(height: 20)
                            
                            ZStack {
                                Rectangle()
                                    .frame(width: 300, height: 100)
                                    .foregroundColor(Color("Main_Purple"))
                                    .cornerRadius(30)
                                
                                NavigationLink(destination: ProcrastinationReviews()) {
                                    Text("Past Experiences")
                                        .font(.system(size: 34, weight: .semibold, design: .rounded))
                                        .foregroundColor(Color("off_White"))
                                }
                            }
                            Spacer().frame(height: 120)
                            
                            ZStack {
                                Rectangle()
                                    .frame(width: 300, height: 100)
                                    .foregroundColor(Color("Main_Purple"))
                                    .cornerRadius(30)
                                
                                HStack {
                                    Text(getCurrentDateString())
                                        .font(.system(size: 30, weight: .semibold, design: .rounded))
                                        .foregroundColor(Color("off_White"))
                                        .padding(.leading, 30)
                                    
                                    Button(action: {
                                        streakManager.toggleStreak()
//                                        streakManager.didTapButton.toggle()
//                                        if streakManager.didTapButton {
//                                                                                    streakManager.incrementStreak()
//                                                                                }
                                    }) {
                                        ZStack {
                                            if streakManager.isDone[streakManager.currentDayIndex] {
                                                GifReaderView(gifName: "flame2_animation")
                                                    .frame(width: 109, height: 80)
                                            } else {
                                                Image("flame_empty")
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fit)
                                                    .frame(width: 40, height: 40)
                                                    .frame(width: 109, height: 40)
                                                    
                                            }

                                        }
                                    }
                                }
                            }
                        }
                        .padding()
                    }
                }

                
                // Back button overlay
                VStack {
                    HStack {
                        Button(action: {
                            dismiss()
                        }) {
                            Image(systemName: "chevron.left")
                                .foregroundColor(Color("off_White"))
                                .font(.system(size: 24, weight: .bold))
                        }
                        .padding(.leading, 30)
                        .padding(.top, 47)
                        
                        Spacer()

                    }
                    Spacer()
                }
            }
            .navigationBarHidden(true)
        }
        .navigationBarBackButtonHidden(true)
    }
    
}




#Preview {
    ProcrastinationView().environmentObject(StreakManager())
}
