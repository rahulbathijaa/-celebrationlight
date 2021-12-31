//
//  Serializing Data.swift
//  Celebration Light
//
//  Created by Rahul Bathija on 2021-12-30.
//

import Foundation
import SwiftUI

struct Note: Codable {
    let id: Int
    let nameTextField: String
    let favteamTextField: String
}

let note = Note(id:1, name: nameTextField, fav_team: favteamTextField)


func storeInfo(){
    do {
        // Create JSON Encoder
        let encoder = JSONEncoder()
        
        // Encode Note
        let data = try encoder.encode(note)
        
        //Write/Set Data
        UserDefaults.standard.set(data, forKey: "note")
    }catch {
        print("Unable to Encode Note (\(error))")
    }

}
