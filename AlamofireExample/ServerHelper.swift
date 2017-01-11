//
//  ServerHelper.swift
//  AlamofireExample
//
//  Created by Adolfho Athyla on 08/01/17.
//  Copyright © 2017 a7hyla. All rights reserved.
//

import UIKit
import Alamofire
import CoreLocation

class ServerHelper: NSObject {

    static let SERVER_URI = "https://api.myjson.com/bins/a8n5f"
    
    static func getAllUsers(completionBlock: @escaping ((_ users: [User]?) -> ())) {
        var users = [User]()
        
        Alamofire.request(SERVER_URI).responseJSON { (response) in
            if let JSONUsers = response.result.value as? NSArray {
                for jsonUser in JSONUsers {
                    let user = User()
                    if let userDictionary = jsonUser as? NSDictionary {
                        if let idAux = userDictionary.value(forKey: "_id") as? String {
                            user.id = idAux
                        }
                        if let ageAux = userDictionary.value(forKey: "age") as? Int {
                            user.age = ageAux
                        }
                        if let nameAux = userDictionary.value(forKey: "name") as? String {
                            user.name = nameAux
                        }
                        if let companyAux = userDictionary.value(forKey: "company") as? String {
                            user.company = companyAux
                        }
                        if let emailAux = userDictionary.value(forKey: "email") as? String {
                            user.email = emailAux
                        }
                        if let phoneAux = userDictionary.value(forKey: "phone") as? String {
                            user.phone = phoneAux
                        }
                        if let addressAux = userDictionary.value(forKey: "address") as? String {
                            user.address = addressAux
                        }
                        if let latitudeAux = userDictionary.value(forKey: "latitude") as? Double, let longitudeAux = userDictionary.value(forKey: "longitude") as? Double {
                            user.coordinates = CLLocationCoordinate2D(latitude: latitudeAux, longitude: longitudeAux)
                        }
                        users.append(user)
                    } else {
                        completionBlock(nil)
                    }
                }
                completionBlock(users)
            } else {
                completionBlock(nil)
            }
        }
    }
    
}
