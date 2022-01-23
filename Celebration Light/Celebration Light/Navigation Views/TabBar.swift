//
//  TabBar.swift
//  Celebration Light
//
//  Created by Rahul Bathija on 2022-01-23.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            TeamController()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            SoundController()
                .tabItem {
                    Label("Sound", systemImage: "house")
                }
            
            SettingsController()
                .tabItem {
                    Label("Settings", systemImage: "gearshape.fill")
                }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
