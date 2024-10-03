


import SwiftUI

struct SocialIsolation: View {
    
        let SocialIsolation = [Experience(name: "Nora", imageName: "nora", description: "Start on social media and snowball from there...", fullMessage: "Start on social media and snowball from there. Listen, ask questions, volunteer if possible, it's helpful."),
            Experience(name: "Mohammed", imageName: "mohammed", description: "Volunteering and coaching are two...", fullMessage: "Volunteering and coaching are two ways to become involved in your community."),
            Experience(name: "Eman", imageName: "Eman", description: "I volunteer at an animal rescue/shelter", fullMessage: "I volunteer at an animal rescue/shelter. It feels good and you often make great connections with other people and animals!")]
    
    var body: some View {
        ContentView(experiences: SocialIsolation)
    }
    // Custom view for each experience entry
    
}
#Preview {
    SocialIsolation()
}

