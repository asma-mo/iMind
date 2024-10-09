import SwiftUI

struct StreakView: View {
    @State var days: [String] = ["S", "M", "T", "W", "T", "F", "S"]
    @State var isDone: [Bool] = [true, true, true, true, false, false, false]
    @State var streak: Int = 4

    @Environment(\.dismiss) var dismiss

    var currentDayIndex: Int {
        let today = Calendar.current.component(.weekday, from: Date()) - 1
        return today
    }

    var body: some View {
        ZStack {
            StreakTamplateView(title: "Streak") {
                VStack(spacing: 16) {
                    Text("Training Streak")
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                        .padding(.bottom, 20)
                        .foregroundColor(.black)
                    
                    HStack {
                        Spacer(minLength: 0)
                        ForEach(0..<days.count, id: \.self) { index in
                            Spacer(minLength: 0)
                            
                            if index == currentDayIndex {
                                Image("arrow_down")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 40, height: 20)
                            }
                            
                            Spacer(minLength: 0)
                        }
                        Spacer(minLength: 0)
                    }
                    
                    HStack(spacing: 12) {
                        ForEach(0..<days.count, id: \.self) { index in
                            VStack(spacing: 4) {
                                Button(action: {
                                    isDone[index].toggle()
                                    streak = isDone.filter { $0 }.count
                                }) {
                                    Image(isDone[index] ? "flame_filled" : "flame_empty")
                                        .resizable()
                                        .frame(width: 30, height: 40)
                                }
                                
                                Text(days[index])
                                    .font(.system(size: 16, weight: .bold, design: .rounded))
                                    .foregroundStyle(.black)
                            }
                        }
                    }
                    
                    Text("\(streak) DAYS")
                        .padding(12)
                        .font(.system(size: 28, weight: .bold, design: .rounded))
                        .padding()
                        .background(Color("Main_Purple"))
                        .cornerRadius(12)
                        .foregroundColor(Color("off_White"))
                        .padding(.top, 50)
                }
            }
            
            VStack {
                HStack {
                    Button(action: {
                        dismiss()
                    }) {
                        Image(systemName: "xmark")
                            .foregroundColor(Color("off_White"))
                            .font(.system(size: 24, weight: .bold))
                    }
                    .padding(.leading, 36)
                    .padding(.top, 55)
                    
                    Spacer()
                }
                Spacer()
            }
        }
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
    }
}

struct StreakView_Previews: PreviewProvider {
    static var previews: some View {
        StreakView()
    }
}
