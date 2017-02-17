//
//  Restaurant.swift
//  FoodPin
//
//  Created by Guarionex Salivia on 2/10/17.
//  Copyright © 2017 Minnesota State University, Mankato. All rights reserved.
//

import Foundation

class Restaurant{
    // Attributes
    var name:String? = ""
    var type:String? = ""
    var location:String? = ""
    var phone = ""
    var image = ""
    var isVisited = false
    
    // Constructor
    init(name: String, type: String, location: String, phone: String, image: String, isVisited: Bool) {
        self.name = name
        self.type = type
        self.location = location
        self.image = image
        self.isVisited = isVisited
        self.phone = phone
        
    }
}
