//
//  FromData.swift
//  Lead Collection
//
//  Created by Bogdan on 17/05/2019.
//  Copyright © 2019 MindHack. All rights reserved.
//

import Foundation

class FormData  {
    var user: User?
    
    var reason: String?
    
    var technology: Int?
    
    var contactDate: Date?

}

class User {
    var firstName: String?
    var lastName: String?
    var email: String?
    var phone: String?
}

class Technology {
    var title: String?
    var uid: String?
    
    
}
