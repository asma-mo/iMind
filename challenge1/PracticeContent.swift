import SwiftUI

struct PracticeContent: View {
    let description: String
    let steps: [String]
    let detailedSteps: [String]
    @Environment(\.dismiss) var dismiss
    // Array to track the expanded state for each step
    @State private var expandedStates: [Bool]
    
    // Initializer to set the initial state
    init(description: String, steps: [String], detailedSteps: [String]) {
        self.description = description
        self.steps = steps
        // Initialize all states to false
        self._expandedStates = State(initialValue: Array(repeating: false, count: steps.count))
        self.detailedSteps = detailedSteps
    }
    
    var body: some View {
        ZStack {
            BackgroundView()
            
            ZStack {
                ScrollView {
                    VStack(spacing: 20) {
                        VStack(alignment: .leading, spacing: 30) {
                            Text("Description:")
                                .font(.system(size: 28, weight: .bold, design: .rounded))
                            
                            Text(description)
                                .font(.system(size: 17, weight: .bold, design: .rounded))
                                
                            Text("Steps:")
                                .font(.system(size: 28, weight: .bold, design: .rounded))
                                .padding(.bottom, 0)
                            
                            VStack(alignment: .leading, spacing: 20) {
                                ForEach(steps.indices, id: \.self) { index in
                                    HStack(alignment: .top) {
                                        Button(action: {
                                            // Toggle the specific step's expansion state
                                            expandedStates[index].toggle()
                                        }) {
                                            HStack {
                                                
                                                    Text("▶︎")
                                                        .rotationEffect(.degrees(expandedStates[index] ? 90 : 0)) // Rotate when expanded
                                                        .foregroundColor(.purple)
                                                
                                            }
                                            
                                        }
                                        VStack{
                                        Text("\(index + 1). \(steps[index])")
                                                .font(.system(size: 17, weight: .semibold, design: .rounded))
                                            .foregroundColor(.black)
                                        
                                            if expandedStates[index]{
                                                Text("\(detailedSteps[index])")
                                                    .font(.system(size: 17, weight: .regular, design: .rounded))
                                                    .foregroundColor(.black).frame(maxWidth: 330)
                                            }
                                        }
                                    }
                                }
                            }
                            .font(.system(.body, design: .rounded))
                        }
                        .padding(.top, 200)
                    }
                }
                
                VStack {
                    HeaderTitle(title: "Practices")
                    Spacer()
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
                    .padding(.leading, 30)
                    .padding(.top, 47)
                    
                    Spacer()
                }
                Spacer()
            }
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)

        }
    }
}

#Preview {
    SocialPracticeView()
}



