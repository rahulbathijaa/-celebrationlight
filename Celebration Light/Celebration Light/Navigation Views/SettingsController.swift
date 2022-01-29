//
//  SettingsController.swift
//  Celebration Light
//
//  Created by Rahul Bathija on 2022-01-14.


import SwiftUI

struct SettingsController: View {
    var body: some View {
        NavigationView{
            
            CustomController2()
            
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

struct CustomController2 : UIViewControllerRepresentable {
    
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<CustomController2>) -> UIViewController {
        
        let storyboard = UIStoryboard(name: "App Storyboard", bundle: Bundle.main)
        let controller = storyboard.instantiateViewController(identifier: "SoundController")
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<CustomController2>) {
        
    }
}
