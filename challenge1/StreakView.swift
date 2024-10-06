import SwiftUI

struct StreakView: View {
    @State var days: [String] = ["S", "M", "T", "W", "T", "F", "S"]
    @State var isDone: [Bool] = [true, false, false, false, false, false, false]
    @State var streak: Int = 3

    @Environment(\.dismiss) var dismiss

    var currentDayIndex: Int {
        let today = Calendar.current.component(.weekday, from: Date()) - 1
        return today
    }

    var body: some View {
        ZStack {
            TamplateView(title: "Streak") {
                VStack(spacing: 16) {
                    Text("Training Streak")
                        .bold()
                        .font(.system(size: 30))
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
                                    .font(.system(size: 16))
                                    .bold()
                            }
                        }
                    }

                    Text("\(streak) DAYS")
                        .padding(12)
                        .font(.title)
                        .bold()
                        .padding()
                        .background(Color(red: 125/255, green: 130/255, blue: 163/255))
                        .cornerRadius(12)
                        .foregroundColor(.white)
                        .padding(.top, 50)
                }
            }
            
            VStack {
                HStack {
                    Button(action: {
                        dismiss()
                    }) {
                        Image(systemName: "chevron.left")
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
