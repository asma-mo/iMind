import SwiftUI

struct ContentView: View {
    @State private var selectedExperience: Experience? = nil
    
    let experiences: [Experience]
    
    init(experiences: [Experience]) {
        self.experiences = experiences
    }
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack {
            BackgroundView()
            
            ScrollView {
                VStack {
                    Spacer(minLength: 0)
                    ScrollViewReader { reader in
                        VStack(spacing: 16) {
                            ForEach(experiences) { experience in
                                ExperienceView(experience: experience, selectedExperience: $selectedExperience)
                            }
                        }
                    }
                    .padding(.horizontal)
                    Spacer(minLength: 0)
                }.padding(.top, 180)
                .blur(radius: selectedExperience != nil ? 5 : 0)
            }
            
           VStack {
               HeaderTitle(title: "Past Exp.")
               Spacer()
           }
            
            if let experience = selectedExperience {
                ZStack {
                    Color.black.opacity(0.6)
                        .edgesIgnoringSafeArea(.all)
                        .onTapGesture {
                            selectedExperience = nil
                        }
                    
                    DetailedExperienceView(experience: experience, isPresented: $selectedExperience)
                        .transition(.move(edge: .bottom))
                }
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

struct Experience: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let description: String
    let fullMessage: String
}

struct ExperienceView: View {
    var experience: Experience
    @Binding var selectedExperience: Experience?
    
    var body: some View {
        HStack(alignment: .top, spacing: 16) {
            Image(experience.imageName)
                .resizable()
                .frame(width: 40, height: 40)
                .padding(.trailing, 8)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(experience.name)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Text(experience.description)
                    .font(.subheadline)
                    .lineLimit(10)
                    .padding(.trailing, 20)
                    .foregroundColor(.white)
            }
            Spacer()
        }
        .padding()
        .background(Color(red: 105/255, green: 112/255, blue: 145/255))
        .cornerRadius(20)
        .onTapGesture {
            selectedExperience = experience
        }
    }
}

struct DetailedExperienceView: View {
    @Environment(\.dismiss) var dismiss
    var experience: Experience
    @Binding var isPresented: Experience?
    
    var body: some View {
        VStack {
            Spacer()
            
            VStack(alignment: .leading, spacing: 12) {
                HStack {
                    Image(experience.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .padding(.trailing, 8)
                    
                    Text(experience.name)
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }
                
                Text(experience.fullMessage)
                    .font(.body)
                    .foregroundColor(.white)
                    .padding(.top, 8)
            }
            .padding()
            .background(Color(red: 105/255, green: 112/255, blue: 145/255))
            .cornerRadius(12)
            .padding(.horizontal, 24)
            
            Spacer()
        }

    }
}

#Preview {
    ProcrastinationReviews()
}
