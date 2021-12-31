//
//  Deserializing Data.swift
//  Celebration Light
//
//  Created by Rahul Bathija on 2021-12-31.
//

import Foundation


class deserializingData  {
    
    func getInfo(){
        if let data = UserDefaults.standard.data(forKey:"note") {
         
            do {
                let decoder = JSONDecoder()
                let note = try decoder.decode(UserInformation.self, from: data)
            }
            catch {
                    print("Unable to Decode Note (\(error))")
            }
        }
    }
    
    
}
