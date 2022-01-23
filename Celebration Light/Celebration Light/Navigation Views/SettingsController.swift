//
//  SettingsController.swift
//  Celebration Light
//
//  Created by Rahul Bathija on 2022-01-14.


import SwiftUI

struct SettingsController: View {
    var body: some View {
        NavigationView{
        Text("SettingsController")
                .navigationTitle("Hey")
        }
        .navigationViewStyle(.stack)
    }
}

struct SettingsController_Previews: PreviewProvider {
    static var previews: some View {
        SettingsController()
    }
}
