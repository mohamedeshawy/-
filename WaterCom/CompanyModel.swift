//
//  CompanyModel.swift
//  WaterCom
//
//  Created by Mohamed Eshawy on 2/4/18.
//  Copyright © 2018 Mohamed Eshawy. All rights reserved.
//

import Foundation
import Gloss

class CompanyModel: JSONDecodable {
    let id : Int?
    let name : String?
    let ownerName : String?
    let password : String?
    let listNumber : String?
    let img_list : String?
    let roomNumber : String?
    let img_room : String?
    let lat : String?
    let lan : String?
    let address : String?
    let email : String?
    let region : String?
    let city : String?
    let img_company : String?
    let description : String?
    
    required init?(json: JSON) {
        guard let id: Int = "id" <~~ json else {
            return nil
        }
        self.id = id
        self.name = "name" <~~ json
        self.ownerName = "ownerName" <~~ json
        self.password = "password" <~~ json
        self.listNumber = "listNumber" <~~ json
        self.img_list = "img_list" <~~ json
        self.roomNumber = "roomNumber" <~~ json
        self.img_room = "img_room" <~~ json
        self.lat = "lat" <~~ json
        self.lan = "lan" <~~ json
        self.address = "address" <~~ json
        self.email = "email" <~~ json
        self.region = "region" <~~ json
        self.city = "city" <~~ json
        self.img_company = "img_company" <~~ json
        self.description = "description" <~~ json
    }
}

