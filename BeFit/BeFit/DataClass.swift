//
//  DataClass.swift
//  BeFit
//
//  Created by Waleed al-Hubaishi on 14.05.18.
//  Copyright © 2018 Waleed al-Hubaishi. All rights reserved.
//

import Foundation

class DataClass{
    
    var tipsBegginerWalk = [String]()
    var tipsBegginerJog = [String]()
    var tipsBegginerMarathon = [String]()
     var tipsBegginerHike = [String]()
    var tipsProffesionalWalk = [String]()
     var tipsProffesionalJog = [String]()
     var tipsProffesionalMarathon = [String]()
    var tipsProffesionalHike = [String]()
    var tipsTopClassWalk = [String]()
    var tipsTopClassJog = [String]()
     var tipsTopClassHike = [String]()
    var tipsTopClassMarathon = [String]()
    
    var expectedStat1 = ["period":"01:15","bpm":"123","distance":"1.254Km","cal":"402"]
    var expectedStat2 = ["period":"01:02","bpm":"119","distance":"1.122Km","cal":"484"]
    var expectedStat3 = ["period":"01:00","bpm":"127","distance":"1.224Km","cal":"371"]
    var expectedStat4 = ["period":"01:44","bpm":"107","distance":"1.34Km","cal":"511"]
    
    var tips = [String]()

    
    var expectedStats = [[String: String]]()

    init(){

    expectedStats.append(expectedStat1)
    expectedStats.append(expectedStat2)
    expectedStats.append(expectedStat3)
    expectedStats.append(expectedStat4)
    }
    
    func determineTheTips(sportPrefrences:SportSelections){
       
        if(sportPrefrences.sportType == "walk"){
            if(sportPrefrences.sportlevel == "beginner"){
                tips = tipsBegginerWalk
            }
            else if(sportPrefrences.sportlevel == "professional"){
                tips = tipsProffesionalWalk
                
            }
            else if(sportPrefrences.sportlevel == "topClass"){
                tips = tipsTopClassWalk
                
            }
        }
            
        else if(sportPrefrences.sportType == "jog"){
            if(sportPrefrences.sportlevel == "beginner"){
                tips = tipsBegginerJog
            }
            else if(sportPrefrences.sportlevel == "professional"){
                tips = tipsProffesionalJog
                
            }
            else if(sportPrefrences.sportlevel == "topClass"){
                tips = tipsTopClassJog
                
            }
        }
        else if(sportPrefrences.sportType == "hike"){
            if(sportPrefrences.sportlevel == "beginner"){
                tips = tipsBegginerHike
            }
            else if(sportPrefrences.sportlevel == "professional"){
                tips = tipsProffesionalHike
                
            }
            else if(sportPrefrences.sportlevel == "topClass"){
                tips = tipsTopClassHike
                
            }
        }
        else if(sportPrefrences.sportType == "marathon"){
            if(sportPrefrences.sportlevel == "beginner"){
                tips = tipsBegginerMarathon
            }
            else if(sportPrefrences.sportlevel == "professional"){
                tips = tipsProffesionalMarathon
                
            }
            else if(sportPrefrences.sportlevel == "topClass"){
                tips = tipsTopClassMarathon
                
            }
        }
    }
}
