//
//  ContentView.swift
//  Celebration Light
//
//  Created by Rahul Bathija on 2021-12-30.
//

import SwiftUI
import UIKit


struct OnboardingView: View {
    @Binding var shouldShowOnboarding: Bool
    @State var nameTextField: String = ""
    @State var favteamTextField: String = ""
    @State var dataArray: [String] = []
    @State var data: serializedData = serializedData()
    @State var api: Api = Api()
  
    
    var body: some View{
        TabView {
            PageView(
                title: "Push Notifications",
                subtitle: "Enable notifications to stay up to date with friends",
                imageName: "bell",
                showsDismissButton: false,
                shouldShowOnboarding: $shouldShowOnboarding
            )
                
            
            PageView(
                title: "Bookmarks",
                subtitle: "Save your favorite pieces of content",
                imageName: "bookmark",
                showsDismissButton: false,
                shouldShowOnboarding: $shouldShowOnboarding
            )
            
            PageView(
                title: "Flights",
                subtitle: "Book flights to the places you want to go",
                imageName: "airplane",
                showsDismissButton: false,
                shouldShowOnboarding: $shouldShowOnboarding
            )
            
            MainView()
            
            PageView(
                title: "Home",
                subtitle: "Go home wherever that might be",
                imageName: "house",
                showsDismissButton: true,
                shouldShowOnboarding: $shouldShowOnboarding
            )
            
           
            }
        
        .tabViewStyle(PageTabViewStyle())
        // Tab view style to show these four pages
        }
}
       
    
   


struct PageView: View {
    let title: String
    let subtitle: String
    let imageName: String
    let showsDismissButton: Bool
    @Binding var shouldShowOnboarding: Bool
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
                .padding()
            
            Text(title)
                .font(.system(size:32))
                .padding()
            
            Text(subtitle)
                .font(.system(size:24))
                .multilineTextAlignment(.center)
                .foregroundColor(Color(.secondaryLabel))
                .padding()
            
            if showsDismissButton {
                Button(action: {
                    shouldShowOnboarding.toggle()
                }, label: {
                    Text("Get Started")
                        .bold()
                        .foregroundColor(Color.white)
                        .frame(width: 200, height: 50)
                        .background(Color.green)
                        .cornerRadius(6)
                })
            }
        }
    }
}


struct MainView: View {
    
    @State var nameTextField: String = ""
    @State var favteamTextField: String = ""
    @State var dataArray: [String] = []
    @State var data: serializedData = serializedData()
    @State var api: Api = Api()
    
    var body: some View {
        NavigationView{
            
            VStack {
            
            TextField("Type your name...", text: $nameTextField)
                .padding()
                .background(Color.gray.opacity(0.3))
                .foregroundColor(.red)
                .font(.headline)
                
            // Text field for name
        
            
                
            TextField("Type your favorite team...", text: $favteamTextField)
                .padding()
                .background(Color.gray.opacity(0.3))
                .foregroundColor(.red)
                .font(.headline)
                
            // Text field for favorite team -- to be remade into a drop down menu with new UI
            

                
                Button(action: {
                        saveText()
                }, label: {
                    Text("Save".lowercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.red.opacity(0.3))
                        .foregroundColor(.red)
                        .font(.headline)
                })
                
            
                // Button and action to save string
                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                
                // Writing text when saved
                
                Spacer()
            
            }
            
            .padding()
            .navigationTitle("Celebration Light!")
            
            // Title
        }

    }

    
    func saveText() {
        data.storeInfo(name:nameTextField, team:favteamTextField)
        let userInformation = data.getInfo()
        let lightOn = api.findTeam(favTeam: userInformation.fav_team)
        

        if lightOn == true{
            dataArray.append("this light is working")
        } else{
            dataArray.append("failed")
        }
        dataArray.append(nameTextField)
        nameTextField = ""
        dataArray.append(favteamTextField)
        favteamTextField = ""
    }
    
    // Function to save and append text as code changes

}

// Onboarding



struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    
    }
}
