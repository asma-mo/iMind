import SwiftUI

struct ProcrastinationReviews: View {
    let procrastinationExperiences = [
        Experience(name: "Reem", imageName: "Reem", description: "It was hard to concentrate at first, but once...", fullMessage: "It was hard to concentrate at first, but once I took time to quiet my surroundings and find a comfortable space, the guided visualization felt much smoother. I was able to tap into a peaceful state much more easily."),
        Experience(name: "Ahmed", imageName: "Ahmed", description: "This practice taught me the only technique that worked for...", fullMessage: "This practice taught me the only technique that worked for my overthinking, anxiety, and staying present. Every time a thought comes to my head, I just say, 'Don’t evaluate.' And immediately, I stop thinking and become present. It’s life-changing. Please try it."),
        Experience(name: "Sara", imageName: "Sara", description: "I have tried many guided meditations but my mind is...", fullMessage: "I have tried many guided meditations, but my mind is like a whirlwind recently, and I am seeking a psychologist’s help. This one is the only one that has resonated with me, and my chronic anxiety just slows down to a peaceful state when I do it, which now is often.")
    ]
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            // Main content
            ContentView(experiences: procrastinationExperiences)
            
//            // Back button overlay
//            VStack {
//                HStack {
//                    Button(action: {
//                        dismiss()
//                    }) {
//                        Image(systemName: "chevron.left")
//                            .foregroundColor(Color("off_White"))
//                            .font(.system(size: 24, weight: .bold))
//                    }
//                    .padding(.leading, 36)
//                    .padding(.top, 55)
//                    
//                    Spacer()
//                }
//                Spacer()
//            }
            
        }

    }
}

#Preview {
    ProcrastinationReviews()
}
