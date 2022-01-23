//
//  MainView.swift
//  Celebration Light
//
//  Created by Rahul Bathija on 2022-01-12.
//

import SwiftUI
import UIKit

class ViewController: UITabBarController {
    
    var body: some View {
        Main()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // create instance of view controllers
        let teamVC = TeamVC()
        let soundVC = SoundVC()
        let settingsVC = SettingsVC()
        
        //set title
        teamVC.title = "Home"
        soundVC.title = "Sound"
        settingsVC.title = "Notify"
        //assign view controllers to tab bar
        self.setViewControllers([teamVC, soundVC, settingsVC], animated: false)
        
        guard let items = self.tabBar.items else {return}
        
        let images = ["house", "star", "bell"]
        
        for x in 0...2 {
            items[x].image = UIImage(systemName: images[x])
        }
    }
}

class TeamVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
    }
}

class SoundVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
    }
}

class SettingsVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemTeal
    }
}



struct Main: View {
        
    @AppStorage("shouldShowOnboarding") var shouldShowOnboarding: Bool = true

    
    var body: some View {
        
        
        NavigationView {
            
            VStack{
                Text("WHAT IT DO BABYYYYYYYY")
                .padding()
            }
            .navigationTitle("OH MA GOD?!?!")
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
