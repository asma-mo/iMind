import SwiftUI

struct StreakView: View {
    @State var days: [String] = ["S","M","T","W","T","F","S"]
    @State var isDone: [Bool] = [true, false, false, false, false, false, false]
    @State var streak: Int = 3

    
    var currentDayIndex: Int {
        let today = Calendar.current.component(.weekday, from: Date()) - 1
        return today
    }
    
    var body: some View {
        TamplateView(title: "Streak") {
            VStack(spacing: 16) {
                
                
                Text("Training Streak")
                    .bold()
                    .font(.system(size: 30))
                    .padding(.bottom, 20)

                HStack {
                    Spacer(minLength: 0)
                    ForEach(0..<days.count, id: \.self) { index in
                        Spacer(minLength: 0)
                        
                        // Show the arrow only above the current day
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
                                
                                isDone[index] = !isDone[index]
                                
                                streak = isDone.filter { $0 == true }.count
                                //{ $0 == true } or { element in element == true}
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
            .padding()
        }
    }
}

#Preview {
    StreakView()
}
