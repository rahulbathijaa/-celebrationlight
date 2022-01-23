//
//  TeamController.swift
//  Celebration Light
//
//  Created by Rahul Bathija on 2022-01-14.
//

import SwiftUI

struct TeamController: View {
    var body: some View {
        NavigationView{
        Text("TeamController")
                .navigationTitle("Hey")
        }
        .navigationViewStyle(.stack)
    }
}

struct TeamController_Previews: PreviewProvider {
    static var previews: some View {
        TeamController()
    }
}
