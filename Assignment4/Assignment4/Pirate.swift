//
//  Pirate.swift
//  Assignment4
//
//  Created by Fhict on 30/09/15.
//  Copyright (c) 2015 Fhict. All rights reserved.
//

import Foundation
class Pirate {
    var Name : String;
    var Life : String;
    var YearsActive : String;
    var CountryOfOrigin : String;
    var Comments : String;
    
    init(name:String!, life:String, yearsActive:String, countryOfOrigin:String, comments:String) {
        self.Name = name;
        self.Life = life;
        self.YearsActive = yearsActive;
        self.CountryOfOrigin = countryOfOrigin;
        self.Comments = comments;
    }

}