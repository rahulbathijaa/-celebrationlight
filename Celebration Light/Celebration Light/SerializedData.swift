import Foundation

class serializedData{
    struct UserInformation: Codable {
        let name: String
        let fav_team: String
    }

    func storeInfo(name:String, team:String){
        do {
            let userInformation = UserInformation(name: name, fav_team: team)
            // Create JSON Encoder
            let encoder = JSONEncoder()
            
            // Encode Note
            let data = try encoder.encode(userInformation)
            
            //Write/Set Data
            UserDefaults.standard.set(data, forKey: "note")
        }catch {
            print("Unable to Encode Note")
        }

    }
    
    func getInfo(){
        if let data = UserDefaults.standard.data(forKey:"note") {
         
            do {
                let decoder = JSONDecoder()
                let userInformation = try decoder.decode(UserInformation.self, from: data)
            }
            catch {
                    print("Unable to Decode Note (\(error))")
            }
        }
    }
}


