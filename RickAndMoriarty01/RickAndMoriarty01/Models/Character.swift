import Foundation

struct Results:Decodable {
    var id:Int
    var name:String
    var status:String
    var species:String
    var gender:String
    var image:String
    var origin:Origin
    var location:Location
}

struct Origin:Decodable {
    var name:String
    var url:String
}

struct Location:Decodable {
    var name:String
    var url:String
}

struct CharacterAPIList:Decodable {
    var results:[Results]
}
