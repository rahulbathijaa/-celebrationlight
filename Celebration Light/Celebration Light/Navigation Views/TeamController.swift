//
//  TeamController.swift
//  Celebration Light
//
//  Created by Rahul Bathija on 2022-01-14.
//

import SwiftUI

struct TeamController: View {
    var body: some View {
        
        CustomController()

        NavigationView{
                    
        Text("TeamController")
                .navigationTitle("Select your favorite team")
        }
        .navigationViewStyle(.stack)
    }
}


struct TeamController_Previews: PreviewProvider {
    static var previews: some View {
        TeamController()
    }
}


struct CustomController : UIViewControllerRepresentable {
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<CustomController>) -> UIViewController {
        
        let storyboard = UIStoryboard(name: "Custom", bundle: Bundle.main)
        let controller = storyboard.instantiateViewController(identifier: "TeamController")
        return controller
    }
    
    func updateUIViewController( _ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<CustomController>) {
        
    }
}
