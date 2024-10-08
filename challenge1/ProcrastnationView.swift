import SwiftUI

struct ProcrastinationView: View {
    @State var didTapButton: Bool = false
    @Environment(\.dismiss) var dismiss

    var body: some View {
        ZStack {
            // Main content
            TamplateView(title: "") {
                // Your program content
                VStack {
                    Text("Procrastination")
                        .foregroundColor(Color("off_White"))
                        .font(.system(size: 36, weight: .bold))
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

                            Text("Practice")
                                .fontWeight(.semibold)
                                .font(.largeTitle)
                                .foregroundColor(Color("off_White"))
                        }
                        Spacer().frame(height: 20)

                        ZStack {
                            Rectangle()
                                .frame(width: 300, height: 100)
                                .foregroundColor(Color("Main_Purple"))
                                .cornerRadius(30)

                            Text("Past Experiences")
                                .fontWeight(.semibold)
                                .font(.largeTitle)
                                .foregroundColor(Color("off_White"))
                                
                        }
                        Spacer().frame(height: 120)

                        ZStack {
                            Rectangle()
                                .frame(width: 300, height: 100)
                                .foregroundColor(Color("Main_Purple"))
                                .cornerRadius(30)

                            HStack {
                                Text(getCurrentDateString())
                                    .fontWeight(.semibold)
                                    .font(.system(size: 33))
                                    .foregroundColor(Color("off_White"))
                                    .padding(.leading, 15)

                                Button(action: {
                                    didTapButton.toggle()
                                }) {
                                    ZStack {
                                        if didTapButton {
                                            GifReaderView(gifName: "flame2_animation")
                                                .frame(width: 109, height: 85)
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
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }

    func getCurrentDateString() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter.string(from: Date())
    }
}

#Preview {
    ProcrastinationView()
}
