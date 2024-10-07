import SwiftUI

struct IsoPractice: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            ZStack {
                // Main content view
                PracticeContent(
                    description: """
                    Engaging in community:
                    Engaging in community activities can be a powerful way to combat social isolation and loneliness. Here are steps to help someone effectively engage with their community:\n\nHow It Helps?\n• Builds Support Systems\n• Boosts Confidence\n• Promotes Shared Experiences
                    """,
                    steps: ["Identify Interests", "Research Local Groups", "Start Small", "Volunteer", "Attend Community Events", "Be Open and Approachable", "Follow Up", "Stay Consistent"],
                    detailedSteps: [
                        "Reflect on your hobbies and interests to find community activities that resonate with you, such as sports, arts, or volunteering.",
                        "Look for clubs, organizations, or events in your area. Websites like Meetup, community centers, or local social media groups can be great resources.",
                        "Attend a single event or meeting to ease into social interactions. You don’t have to commit to everything at once.",
                        "Find local charities or organizations that align with your interests. Volunteering can be a fulfilling way to meet new people while contributing to a cause.",
                        "Go to local fairs, festivals, or public talks. These gatherings are often more relaxed and can be easier for meeting people.",
                        "When you attend events, try to be open to conversations. Smile and make eye contact, and don’t hesitate to introduce yourself.",
                        "If you connect with someone, don’t hesitate to reach out later. Invite them for coffee or to join you for another activity.",
                        "Regularly participating in community events helps build familiarity and comfort, making it easier to connect with others over time."
                    ]
                )
               // Optional padding for visual spacing
                
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
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

#Preview {
    IsoPractice()
}


