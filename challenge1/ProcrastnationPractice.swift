import SwiftUI

struct ProcrastnationPractice : View {
    
    var body: some View {
        NavigationView {
            PracticeContent(
                
                description: """
            Guided Visualization can be a powerful tool to help you stay motivated and focused on achieving your goals. By mentally rehearsing success, you shift your mindset from doubt to confidence. This practice enables you to visualize not only the outcome you want but also how to overcome obstacles along the way. Through vivid imagery, you condition your mind to believe in your ability to achieve your goals, reducing worry and increasing focus.\n
            How It Helps?\n
            • Strengthens motivation by reinforcing positive outcomes
            • Builds confidence in your ability to succeed
            • Reduces anxiety about failure
            • Helps maintain focus on actionable steps
            
            """,
                steps: ["dentify Your Goal", "Create a Calm Environment", "Focus on Your Breathing","Visualize Your Desired Outcome","magine Overcoming Obstacles","Focus on Your Next Steps","Repeat and Reinforce"],
                detailedSteps: ["Think clearly about the specific goal you want to achieve.\n\nIt could be a personal, professional, or physical goal.\n\nWrite it down to clarify your intentions.",
                                "Find a quiet space where you can relax. \n\nSit or lie down in a comfortable position and eliminate distractions. ", "Start by focusing on deep breathing.\n\n• Inhale slowly for 4 seconds\n• Hold for 4 seconds\n• Exhale for 4 seconds\n\n  Repeat this for 1 minute to calm your mind and body. Focus only on your breath.","Close your eyes and imagine yourself having already achieved your goal. Picture every detail\n\n•What does success look like?\n•How do you feel in this moment?\n•Who is celebrating this achievement with you?\n\nFocus on the positive emotions that come from this achievement, like pride, joy, or relief.","Now, envision the challenges that might come up and imagine yourself calmly and confidently overcoming them. See yourself handling difficult moments with ease and clarity.\n\n•Example: If you’re worried about running out of time, visualize yourself managing time effectively and completing tasks with focus and discipline.","After visualizing the end goal, zoom in on the next immediate step you need to take toward achieving that goal. Imagine yourself doing that specific task with focus and energy.\n\n•Example: “Tomorrow, I will break down my project into small tasks and tackle the most important one first.","Stay in this positive mindset for a few more minutes. Repeat this visualization daily, if possible to maintain your focus and motivation. The more you practice, the stronger your mental rehearsal for success becomes."]
            )
            
            
        }.navigationBarBackButtonHidden(true)
    }
}

#Preview {
    ProcrastnationPractice()
}
