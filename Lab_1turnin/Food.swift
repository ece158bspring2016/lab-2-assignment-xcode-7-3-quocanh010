//
//  Food.swift
//  Lab_1turnin
//
//  Created by Anh Mai on 4/20/16.
//  Copyright © 2016 Anh Mai. All rights reserved.
//

import UIKit

struct Food {
    var name: String?
    var country: String?
    var rating: Int
    
    init(name: String?, country: String?, rating: Int) {
        self.name = name
        self.country = country
        self.rating = rating
    }
}