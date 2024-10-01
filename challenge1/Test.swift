import SwiftUI

struct Test: View {
    let description: String
    let steps: [String]
    var body: some View {
        TamplateView(title: "Practice") {
            // Here write your program!! :)

            VStack(alignment: .leading, spacing: 80) {
                Text("Description:")
                    .font(.title)
                    .fontWeight(.bold)
//                    .padding(.bottom,40)
                
                
                Text(description)
                    .fontWeight(.bold)
//                    .padding(.bottom,40)
                
                Text("Steps:")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.bottom,0)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("1. \(steps[0])")
                    Text("2. \(steps[1]) ")
                    Text("3. \(steps[2]) ")
                }
                .font(.body)
            }.padding(.trailing,200)
            }
        }
    }

#Preview {
    Test(
        description: """
        Engaging in community:

        Engaging in community activities can be a powerful way to combat social isolation and loneliness. Here are steps to help someone effectively engage with their community:

        How it Helps?
        • Builds Support Systems
        • Boosts Confidence
        • Promotes Shared Experiences
        """,
        steps: [
            "Identify Interests: Reflect on your hobbies and interests to find community activities that resonate with you, such as sports, arts, or volunteering.",
            "Research Local Groups: Look for clubs, organizations, or events in your area. Websites like Meetup, community centers, or local social media groups can be great resources.",
            "Start Small: Attend a single event or meeting to ease into social interactions. You don’t have to commit to everything at once.",
            "Volunteer: Find local charities or organizations that align with your interests. Volunteering can be a fulfilling way to meet new people while contributing to a cause.",
            "Attend Community Events: Go to local fairs, festivals, or public talks. These gatherings are often more relaxed and can be easier for meeting people.",
            "Be Open and Approachable: When you attend events, try to be open to conversations. Smile, make eye contact, and don’t hesitate to introduce yourself.",
            "Follow Up: If you connect with someone, don’t hesitate to reach out later. Invite them for coffee or to join you for another activity.",
            "Stay Consistent: Regularly participating in community events helps build familiarity and comfort, making it easier to connect with others over time."
        ]
    )
}

