//
//  PersonModel.swift
//  WaterCom
//
//  Created by Mohamed Eshawy on 2/4/18.
//  Copyright © 2018 Mohamed Eshawy. All rights reserved.
//

import Foundation
import Gloss

class PersonModel: JSONDecodable {
    let id : Int?
    let name : String?
    let email : String?
    let password : String?
    let phone : String?
    let region : String?
    let city : String?
    let lat : String?
    let lan : String?
    let address : String?
    let img : String?
    let contreNumber : String?
    let identicalNumber : String?
    
    required init?(json: JSON) {
        guard let id: Int = "id" <~~ json else {
            return nil
        }
        self.id = id
        self.name = "name" <~~ json
        self.email = "email" <~~ json
        self.password = "password" <~~ json
        self.phone = "phone" <~~ json
        self.region = "region" <~~ json
        self.city = "city" <~~ json
        self.lat = "lat" <~~ json
        self.lan = "lan" <~~ json
        self.address = "address" <~~ json
        self.img = "img" <~~ json
        self.contreNumber = "contreNumber" <~~ json
        self.identicalNumber = "identicalNumber" <~~ json
    }
}

