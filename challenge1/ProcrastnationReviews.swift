import SwiftUI

struct ProcrastnationReviews: View {
    
        let Procrastnation = [
            Experience(name: "Reem", imageName: "Reem", description: "It was hard to concentrate at first,but once...", fullMessage: "It was hard to concentrate at first, but once I took time to quiet my surroundings and find a comfortable space, the guided visualization felt much smoother. I was able to tap into a peaceful state much more easily"),
            Experience(name: "Ahmed", imageName: "Ahmed", description: "This practice taught me the only technique that worked for...", fullMessage: "This practice taught me the only technique that worked for my overthinking, anxiety and staying present.Every time a thought comes to my head. I just say, Don’t evaluate . And immediately I stop thinking and become present. It’s life changing. Please try it"),
            Experience(name: "Sara", imageName: "Sara", description: "I have tried many guided meditations but my mind is...", fullMessage: "I have tried many guided meditations but my mind is like a whirlwind recently and seeking a psychologist’s help. This one is the only one that has resonated with me, and my chronic anxiety just slows down to a peaceful state when I do it, and which now is often.")]
    
    var body: some View {
        ContentView(experiences: Procrastnation)
    }
    // Custom view for each experience entry
    
}
#Preview {
    ProcrastnationReviews()
}

