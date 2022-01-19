//
//  MainView.swift
//  Celebration Light
//
//  Created by Rahul Bathija on 2022-01-12.
//

import SwiftUI

struct Main: View {
    @AppStorage("__shouldShowOnboarding") var shouldShowOnboarding: Bool = true
    
    
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
