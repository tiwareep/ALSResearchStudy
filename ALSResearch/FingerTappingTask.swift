//
//  FingerTappingTest.swift
//  HealthTechApp
//
//  Created by arpitsabherwal on 09/03/17.
//  Copyright © 2017 arpitsabherwal. All rights reserved.
//


import ResearchKit
public var FingerTappingTask: ORKOrderedTask {
    return ORKOrderedTask.twoFingerTappingIntervalTask(withIdentifier: "TappingTest", intendedUseDescription: "To measure the accuracy of motor functions", duration: 5, handOptions: ORKPredefinedTaskHandOption.both, options: ORKPredefinedTaskOption())
    
}

