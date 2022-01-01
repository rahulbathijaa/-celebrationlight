//
//  API Call.swift
//  Celebration Light
//
//  Created by Rahul Bathija on 2021-12-31.
//

import Foundation
import SwiftUI


struct FavTeam: Codable, Identifiable {
    private(set) var id = UUID()
    var fav_team: Bool
    var teams: String
}

// Codable because JSON format
// Identifiable to loop through data in Swift
// UUID to create unique identifier
// Var of fav_team which will be a boolean of true or false

class Api {
    func postFavTeam(completion: @escaping ([FavTeam]) -> () ){
        
        let mockData: [String: Any] = [
             "teams": [
                "Miami Dolphins" : false,
                "Green Bay Packers" : false,
                "Kansas City Chiefs" : false,
                "Tampa Bay Buccaneers" : false,
                "New England Patriots" : true,
                "San Francisco 49ers" : false,
                "Las Vegas Raiders" : false,
                "Chicago Bears" : false,
                "Baltimore Ravens" : false,
                "Washington Football Team" : false,
                "Philadelphia Eagles" : false,
                "Seattle Seahawks" : false,
                "Los Angeles Rams" : false,
                "Denver Broncos" : false,
                "Minnesota Vikings" : false,
                "New York Giants" : false,
                "Indianapolis Colts" : false,
                "New Orleans Saints" : false,
                "Detroit Lions" : false,
                "Tennesse Titans" : false,
                "Carolina Panthers" : false,
                "Jacksonville Jaguars" : false,
                "New York Jets" : false,
                "Houstin Texans" : false,
                "Dallas Cowbows" : false,
                "Pittsburgh Steelers" : false
                ]
        ]
        
        var mockJson = JSONSerialization.isValidJSONObject(mockData)

        // Writing example of JSON data as a hashmap
        
        guard let url = URL(string: "url") else     {
            print("Celebration Light is currently not functioning. Please reload the app and try again.")
            return
            
        }
        // Get function to API server
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
        // Includes completion handler with
        // data: the data returned by the request
        // response: response metadata object that includes the HTTP headers and status code
        // error: error object that with information about why the request failed. It returns nil if the request was successful
            let fav_team = try! JSONDecoder().decode([FavTeam].self, from: data!)
            // code to decode JSON
            // decoding fav_team from the JSON data we are using
            print(fav_team)
            // print fav_team boolean into console
            
            DispatchQueue.main.async {
                completion(fav_team)
            }
            // To run task asynchronously in app
            
            completion(fav_team)
        }
        .resume()
        // resume session call
        
       // dataFromJsonString = mockJson
        // jsonString =
        // cityFromData =
        // if let dataFromJsonString = jsonString?.data(using: .utf8) {
        //  let cityFromData = try JSONDecoder().decode(City.self, from: dataFromJsonString)
        //  print(cityFromData.name)
        
        
        func getFavTeam(){
            
            if let data = UserDefaults.standard.data(forKey:"mockJson") {
             
                do {
                    let decoder = JSONDecoder()
                    let userInformation = try decoder.decode(FavTeam.self, from: data)
                    print(FavTeam.self)
                }
                catch {
                        print("Unable to Decode Note (\(error))")
            
                
            }
            
        }
        
        
        
        
    }
}



}






//1. turn this json data into an object
//2. it's gonna be a hashmap so use that to find out if the fav team is true or false
//3. change to pink if it's true

