//
//  TabBar.swift
//  Celebration Light
//
//  Created by Rahul Bathija on 2022-01-23.
//

import SwiftUI

struct TabBar: View {
    @AppStorage("_____shouldShowOnboarding") var shouldShowOnboarding: Bool = true
    
    var body: some View {
        TabView {
            TeamController()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            SoundController()
                .tabItem {
                    Label("Sound", systemImage: "applelogo")
                }
            
            SettingsController()
                .tabItem {
                    Label("Settings", systemImage: "gearshape.fill")
                }
            
        }
        .fullScreenCover(isPresented: $shouldShowOnboarding, content: {OnboardingView(shouldShowOnboarding: $shouldShowOnboarding)

        })

    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
