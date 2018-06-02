//
//  DataClass.swift
//  BeFit
//
//  Created by Waleed al-Hubaishi on 14.05.18.
//  Copyright © 2018 Waleed al-Hubaishi. All rights reserved.
//

import Foundation

class DataClass{
    
    let tips = ["stay up early in the morning", "dont sleep late", "eat five meals per day", "buy comfortable shoes"]
    
    var expectedStat1 = ["period":"01:15","bpm":"123","distance":"1.254Km","cal":"402"]
    var expectedStat2 = ["period":"01:02","bpm":"119","distance":"1.122Km","cal":"484"]
    var expectedStat3 = ["period":"01:00","bpm":"127","distance":"1.224Km","cal":"371"]
    var expectedStat4 = ["period":"01:44","bpm":"107","distance":"1.34Km","cal":"511"]
    
    var expectedStats = [[String: String]]()

    init(){

    expectedStats.append(expectedStat1)
    expectedStats.append(expectedStat2)
    expectedStats.append(expectedStat3)
    expectedStats.append(expectedStat4)
    }
}
