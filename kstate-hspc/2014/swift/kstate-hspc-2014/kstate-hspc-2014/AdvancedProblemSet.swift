//
//  AdvancedProblemSet.swift
//  kstate-hspc-2014
//
//  Created by Terrence K on 4/15/15.
//  Copyright (c) 2015 Terrence Katzenbaer. All rights reserved.
//

import Cocoa

class AdvancedProblemSet {
    init() {
        
    }
    
    // A1: being lapped on the track
    // You and your friend are running laps on the track at the rec complex. Your friend passes you 
    // exactly X times in one of your laps (that is, you start the lap together and at the Xth time 
    // she passes you, it is at the end of your lap). How much faster in miles per hour is your 
    // friend going than you are? You only know the length of the track in miles per hour, the time 
    // in seconds for you to complete one lap, and X, the number of times she passes or comes next 
    // to you. Answer should include at least one decimal place if not an integer.
    // 
    // Example 1:
    // The track is 1 mile in length. You and your friend start together, she runs faster and 
    // passes you at the halfway point and again right at the end of the mile. 
    // It took you 900 seconds (15 minutes). You did 1 mile in .25 hours for 4 miles per hours. 
    // She ran 3 miles in 15 minutes for 12 miles per hour or 8 miles per hour faster than you. 
    // Length = 1 mile Time = 900 sec X=2
    // Answer: 8 miles/hour faster than you
    //
    // Example 2: 
    // Length = 0.5 mile Time = 900 sec X=1
    // Answer: 2 miles per hour faster (she was 4 miles per hour, your were 2 miles per hour)
    typealias Miles = Double
    typealias Seconds = Double
    typealias Hours = Double
    typealias Passes = Int
    typealias MilesPerHour = Double
    func problemOne(trackLength: Miles, yourCompletionTime: Seconds, numberOfPasses: Passes) -> MilesPerHour {
        let yourTimeInHours: Hours = yourCompletionTime / 3600.0 // 3600 seconds in one hour
        let yourSpeed: MilesPerHour = trackLength / yourTimeInHours
        
        let friendTimeInHours: Hours = yourTimeInHours
        let friendSpeed: MilesPerHour = (trackLength * Double(numberOfPasses + 1)) / friendTimeInHours
        
        return friendSpeed - yourSpeed
    }
}
