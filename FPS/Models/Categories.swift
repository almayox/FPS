//
//  Categories.swift
//  FPS
//
//  Created by almayo ibrahim  on 04/06/2023.
//

import Foundation

struct Categories: Decodable {
    var id: Id
    var name: Name
    var photo: Photo
    
    enum Codingkeys: String, CodingKey {
        case Photo = "image"
    }
    
}

struct Id: Decodable {
    var id = 56
}

struct Name: Decodable {
    var name = "aluminium"
}

struct Photo: Decodable {
    var id = 74
    var crc = "https://fps.vantabox.online/wp-content/uploads/2023/05/cropped-food-packaging-solution-logo-2.jpg"
    
    
}
