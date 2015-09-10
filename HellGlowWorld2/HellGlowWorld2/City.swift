//
//  City.swift
//  HellGlowWorld
//
//  Created by Fhict on 10/09/15.
//  Copyright (c) 2015 Fhict. All rights reserved.
//

import Foundation

class City
{
    var name: String;
    var population: Int32;
    var glowActs = [GlowAct]();
    
    init()
    {
        name = "";
        population = 0;
    }
    
    func showInfo()
    {
        println("In the city of \(name) there are currently living \(population) people. The number of Glow Acts is \(glowActs.count).")
        
        for glowAct in glowActs
        {
            glowAct.showInfo();
        }
    }
}