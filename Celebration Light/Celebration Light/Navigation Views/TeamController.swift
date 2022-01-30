//
//  TeamController.swift
//  Celebration Light
//
//  Created by Rahul Bathija on 2022-01-14.
//

import SwiftUI

struct TeamController: View {
    
    @State var data: serializedData = serializedData()
    @State var api: Api = Api()
    
    var body: some View {
        
        

        NavigationView{
            

        
            VStack(alignment: .leading) {
                
                
                CustomController()
                
//                Text("Your favorites")
//                    .font(.headline)
//                    .padding(.leading, 15)
//                    .padding(.top, 5)
//
////                ScrollView(.horizontal, showsIndicators: false) {
////                    HStack(alignment: .top, spacing: 0) {
////
////                    }
////                }
//                .frame(height:185)
            }
            
                
          
        
        
        }
//        .navigationViewStyle(.stack)

    }
}


struct TeamController_Previews: PreviewProvider {
    static var previews: some View {
        TeamController()
    }
}


struct CustomController : UIViewControllerRepresentable {
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<CustomController>) -> UIViewController {
        
        let storyboard = UIStoryboard(name: "App Storyboard", bundle: Bundle.main)
        let controller = storyboard.instantiateViewController(identifier: "TeamController")
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<CustomController>) {
        
    }
}
