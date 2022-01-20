//
//  NavigationBarView.swift
//  Celebration Light
//
//  Created by Rahul Bathija on 2022-01-19.
//

import SwiftUI
import UIKit




class ViewsController: UITabBarController {
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // create instance of view controllers
        let teamVC = TeamsVC()
        let soundVC = SoundsVC()
        let settingsVC = SettingssVC()
        
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

class TeamsVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
    }
}

class SoundsVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
    }
}

class SettingssVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemTeal
    }
}

//struct NavigationBarView: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        ViewsController()
    }
}
