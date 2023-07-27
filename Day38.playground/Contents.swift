import UIKit

let jsonFromServer = """
{
    "nick_name": "AGO",
    "job": "Student, Barista",
    "user_name": "snago9",
}
"""
// Decode : Json을 클래스,스트럭트로 만들기
// Encode : 클랴스, 스트럭트를 Json으로 만들기
// Encodable & Decodable = Codable

struct User : Decodable{
    
    var nickname : String
    var job : String
    var username : String
    
    enum CodingKeys : String , CodingKey{
        case nickname = "nick_name"
        case job
        case username = "user_name"
    }
    static func getUserFromJson(_ jsonString : String)-> Self? {
        guard let jsonData : Data = jsonString.data(using: .utf8) else {
            return nil
        }
        do {
            let user = try JSONDecoder().decode(User.self, from: jsonData)
            print("user: \(user)")
            return user
        } catch {
            print("error: \(error.localizedDescription)")
            return nil
        }
    }
    
}

let user = User.getUserFromJson(jsonFromServer)

