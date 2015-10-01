//
//  main.swift
//  HellGlowWorld
//
//  Created by Fhict on 10/09/15.
//  Copyright (c) 2015 Fhict. All rights reserved.
//

import Foundation

var blueLightAct : GlowAct = GlowAct();
blueLightAct.name = "The Bluelight act.";
blueLightAct.startTime = "22:20";
blueLightAct.rating = 8;

var redLightAct : GlowAct = GlowAct();
redLightAct.name = "The Redlight act.";
redLightAct.startTime = "11:20";
redLightAct.rating = 6;

var eindhoven : City = City();

eindhoven.name = "Eindhoven";
eindhoven.population = 220000;

eindhoven.glowActs.append(redLightAct);
eindhoven.glowActs.append(blueLightAct);

eindhoven.showInfo();





