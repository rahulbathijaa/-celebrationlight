//
//  ContentView.swift
//  Celebration Light
//
//  Created by Rahul Bathija on 2021-12-30.
//

import SwiftUI

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
        }else{
            dataArray.append("failed")
        }
        dataArray.append(nameTextField)
        nameTextField = ""
        dataArray.append(favteamTextField)
        favteamTextField = ""
    }
    
    // Function to save and append text as code changes

}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    
    }
}

