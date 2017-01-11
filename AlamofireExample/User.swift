//
//  User.swift
//  AlamofireExample
//
//  Created by Adolfho Athyla on 08/01/17.
//  Copyright © 2017 a7hyla. All rights reserved.
//

import UIKit
import CoreLocation

class User: NSObject {
    var id: String?
    var age: Int?
    var name: String?
    var company: String?
    var email: String?
    var phone: String?
    var address: String?
    var coordinates: CLLocationCoordinate2D?
    
    init(id: String, age: Int, name: String, company: String, email: String, phone: String, address: String, latitude: CLLocationDegrees, longitude: CLLocationDegrees) {
        self.id = id
        self.age = age
        self.name = name
        self.company = company
        self.email = email
        self.phone = phone
        self.address = address
        self.coordinates = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
    override init() { }
}
