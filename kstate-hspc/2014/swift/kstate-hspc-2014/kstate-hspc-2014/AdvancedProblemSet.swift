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
    
    //2 Advanced — Probability
    //Write a program that takes as input the number n of games remaining in a certain baseball playoff series, the number k of wins needed for a specific team, and the probability p that this team will win a given game (this is a single probability that will remain the same for each game). The program will then output the probability that this team achieves at least the needed number of wins. To compute this probability, you can use the following formula (which assumes p is fixed):
    //f(n, k) =
    //8><>:
    //0 if k > n
    //1 if k = 0
    //pf(n − 1, k − 1) + (1 − p)f(n − 1, k) otherwise
    //For example to compute the probability of winning at least 2 out of 3 games with a probability of 0.6 for a single game:
    //f(3, 2) = 0.6f(2, 1) + 0.4f(2, 2)
    //f(2, 1) = 0.6f(1, 0) + 0.4f(1, 1)
    //f(2, 2) = 0.6f(1, 1) + 0.4f(1, 2)
    //f(1, 0) = 1
    //f(1, 1) = 0.6f(0, 0) + 0.4f(0, 1)
    //f(1, 2) = 0
    //f(0, 0) = 1
    //f(0, 1) = 0
    //Then back-substituting:
    //f(1, 1) = 0.6
    //f(2, 2) = 0.6(0.6) = 0.36
    //f(2, 1) = 0.6 + 0.4(0.6) = 0.84
    //f(3, 2) = 0.6(0.84) + 0.4(0.36) = 0.648
    //You may assume that both n and k are nonnegative integers less than 10 and that 0 _ p _ 1, (a probability of 0 means it is impossible, and a probability of
    //1 means it is guaranteed).
    //Example 1:
    //Enter number of games: 3
    //Enter number of wins: 2
    //Enter win probability: .6
    //Probability: 0.648
    //Example 2:
    //Enter number of games: 7
    //Enter number of wins: 4
    //Enter win probability: 0.45
    //Probability: 0.391712203125
    func problemTwo() {
        
    }
}
