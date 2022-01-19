//
//  MainView.swift
//  Celebration Light
//
//  Created by Rahul Bathija on 2022-01-12.
//

import SwiftUI

struct Main: View {
    @AppStorage("shouldShowOnboarding") var shouldShowOnboarding: Bool = true
    
    
    var body: some View {
        NavigationView {
        
            VStack{
                Text("WHAT IT DO BABYYYYYYYY")
                .padding()
            }
            .navigationTitle("OH MA GOD IT WORKS?!")
        }
        .fullScreenCover(isPresented: $shouldShowOnboarding, content: {OnboardingView(shouldShowOnboarding: $shouldShowOnboarding)
            
        })
    }
}

// Onboarding

struct OnboardingView: View {
    @Binding var shouldShowOnboarding: Bool
    
    var body: some View{
        TabView {
            PageView(
                title: "Push Notifications",
                subtitle: "Enable notifications to stay up to date with friends",
                imageName: "bell",
                showsDismissButton: false,
                shouldShowOnboarding: $shouldShowOnboarding
            )
                
            
            PageView(
                title: "Bookmarks",
                subtitle: "Save your favorite pieces of content",
                imageName: "bookmark",
                showsDismissButton: false,
                shouldShowOnboarding: $shouldShowOnboarding
            )
            
            PageView(
                title: "Flights",
                subtitle: "Book flights to the places you want to go",
                imageName: "airplane",
                showsDismissButton: false,
                shouldShowOnboarding: $shouldShowOnboarding
            )
            
            PageView(
                title: "Home",
                subtitle: "Go home wherever that might be",
                imageName: "house",
                showsDismissButton: true,
                shouldShowOnboarding: $shouldShowOnboarding
            )
        }
        .tabViewStyle(PageTabViewStyle())
        // Tab view style to show these four pages
    }
}

struct PageView: View {
    let title: String
    let subtitle: String
    let imageName: String
    let showsDismissButton: Bool
    @Binding var shouldShowOnboarding: Bool
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
                .padding()
            
            Text(title)
                .font(.system(size:32))
                .padding()
            
            Text(subtitle)
                .font(.system(size:24))
                .multilineTextAlignment(.center)
                .foregroundColor(Color(.secondaryLabel))
                .padding()
            
            if showsDismissButton {
                Button(action: {
                    shouldShowOnboarding.toggle()
                }, label: {
                    Text("Get Started")
                        .bold()
                        .foregroundColor(Color.white)
                        .frame(width: 200, height: 50)
                        .background(Color.green)
                        .cornerRadius(6)
                })
            }
        }
    }
    
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}


//import SwiftUI
//
//struct MainScreen: View {
//    var body: some View {
//        VStack {
//            navigationTitle("Name's Celebration Light")
//
//            Image(uiImage: #imageLiteral(resourceName: "Light Mockup (70% Opacity)"))
//                .resizable()
//                .frame(width: 200, height: 200)
//
//            HStack{
//
//                Image(systemName: "gearshape.fill")
//                    .font(.largeTitle)
//
//
//                Image(systemName: "applelogo")
//                    .font(.largeTitle)
//            }
//
//        }
//    }
//}
//
//struct MainScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        MainScreen()
//    }
//}
