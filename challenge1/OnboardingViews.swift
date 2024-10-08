import SwiftUI

struct OnboardingViews: View {
    
    @State var isShowingSplash = false
    @State var isShowingSplashFirstTime = true
  
    @Binding var isNewUser: Bool 
    
    let pages = [
        "Many adults find themselves trapped in a cycle of negative thoughts and behaviors, struggling to break free.",
        "We aim to support users in building confidence and mastering effective social interactions by practices.",
        "Our app is designed to help adults enhance their mindset through psychological practices."
    ]
    
    let images = [
        "sad","team","design"
    ]
    
    @State private var currentPage = 0
    
    var body: some View {
        NavigationView {
            ZStack {
                BackgroundView()
                
                VStack {
                    
                    TabView(selection: $currentPage) {
                        ForEach(0..<pages.count, id: \.self) { index in
                            
                            VStack {
                                Spacer()
                                
                                // الصورة تظهر فقط في الصفحة الأولى
                                
                                Image(images[index])
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 400, height: 250)
                                    .padding(.bottom,20)
                                
                                // تقليل حجم الخط
                                Text(pages[index])
                                    .font(.title3) // أو أي حجم مناسب
                                //                                .fontWeight(.bold)
                                    .multilineTextAlignment(.center)
                                    .padding(.horizontal)
                                    .frame(width: 370)
                                // إضافة مساحة أفقية
                                
                                Spacer() // لتقليل المسافة بين النص والصورة
                            }
                            .tag(index)
                        }
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never)) // التحكم في عرض النقاط
                    
                    // النقاط التي تظهر تحت الصفحات
                    HStack {
                        ForEach(0..<pages.count, id: \.self) { index in
                            RoundedRectangle(cornerRadius: 3)
                                .frame(width: currentPage == index ? 16 : 8, height: 6)
                                .foregroundColor(currentPage == index ? Color("Main_Purple") : .gray.opacity(0.5))
                                .animation(.easeInOut, value: currentPage)
                        }
                    }
                    .padding(.bottom, 50)
                }
                
                // إضافة زر "Skip" في الزاوية اليمنى السفلية
                VStack {
                    Spacer() // لتحديد مكان الزر في الأسفل
                    HStack {
                        Spacer() // يجعل الزر في اليمين
                        Button(action: {
                            // الإجراء الذي يحدث عند الضغط على زر "Skip"
                            print("Skip button pressed")
                        }) {
                            NavigationLink(destination: MainView()) {
                                Text("Skip")
                                    .font(.system(size: 17, weight: .regular, design: .rounded))
                                    .foregroundColor(.gray) // لون باهت
                                    .opacity(0.6) // تعتيم النص لجعله باهتًا
                            }
                        }
                        .padding(.trailing, 40) // مسافة من الحافة اليمنى
                        .padding(.bottom, 20) // مسافة من الحافة السفلية
                    }
                }
                if isShowingSplash {
                    SplashView(isActive: $isShowingSplashFirstTime)
                }

            }
        }
    }}


#Preview {
    OnboardingViews(isNewUser: .constant(true))
}

