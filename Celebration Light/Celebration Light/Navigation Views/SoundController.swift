//
//  SoundController.swift
//  Celebration Light
//
//  Created by Rahul Bathija on 2022-01-14.
//

import SwiftUI


struct SoundController: View {
    var body: some View {
       
        
        NavigationView{
            
            CustomController1()

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

struct CustomController1 : UIViewControllerRepresentable {
    
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<CustomController1>) -> UIViewController {
        
        let storyboard = UIStoryboard(name: "App Storyboard", bundle: Bundle.main)
        let controller = storyboard.instantiateViewController(identifier: "SoundController")
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<CustomController1>) {
        
    }
}
