//
//  SoundController.swift
//  Celebration Light
//
//  Created by Rahul Bathija on 2022-01-14.
//

import SwiftUI

class teamController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

struct SoundController: View {
    var body: some View {
        NavigationView{
        Text("SoundController")
                .navigationTitle("Hey")
        }
        .navigationViewStyle(.stack)

    }
}

struct SoundController_Previews: PreviewProvider {
    static var previews: some View {
        SoundController()
    }
}
