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
    
    var body: some View {
        NavigationView{
            
            VStack {
            
            TextField("Type your name...", text: $nameTextField)
                .padding()
                .background(Color.gray.opacity(0.3))
                .foregroundColor(.red)
                .font(.headline)
        
                
            TextField("Type your favorite team...", text: $favteamTextField)
                .padding()
                .background(Color.gray.opacity(0.3))
                .foregroundColor(.red)
                .font(.headline)
            

                
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
                
                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                
                Spacer()
            
            }
            
            .padding()
            .navigationTitle("Welcome!")
        }

    }

    func saveText() {
        dataArray.append(nameTextField)
        nameTextField = ""
        dataArray.append(favteamTextField)
        favteamTextField = ""
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
} 
