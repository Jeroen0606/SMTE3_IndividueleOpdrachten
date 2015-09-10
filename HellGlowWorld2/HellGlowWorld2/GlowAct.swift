//
//  GlowAct.swift
//  HellGlowWorld
//
//  Created by Fhict on 10/09/15.
//  Copyright (c) 2015 Fhict. All rights reserved.
//

import Foundation

class GlowAct
{    
    var name: String;
    var rating: Int32;
    var startTime: String;
    
    init()
    {
        name = "";
        rating = 0;
        startTime = "";
    }
    
    func showInfo()
    {
        println("The act is called \(name) and strarts at \(startTime). It is given an average rating of \(rating).");
    }
}