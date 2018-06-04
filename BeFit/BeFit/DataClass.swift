//
//  DataClass.swift
//  BeFit
//
//  Created by Waleed al-Hubaishi on 14.05.18.
//  Copyright © 2018 Waleed al-Hubaishi. All rights reserved.
//

import Foundation

class DataClass{
    
    //beginner
    let tipsBegginerWalk = ["Preparing to walk: Learn what you need to do before you begin a walking program. This may include getting medical advice, investing in basic walking gear like shoes and clothing, and more", "Walking Technique: Next, you will learn good walking technique, focusing on proper posture, use of arms, and leg motion", "Walking Schedule: Determine how often to walk, how fast, different types of walking, and how far to build up to the level of 30-60 minutes per day.","Staying Motivated: Explore techniques for keeping yourself walking and avoiding common mistakes"]
    
     let tipsBegginerJog = ["START WITH SHORT RUNNING INTERVALS", "DON’T START OUT RUNNING TOO FAST", "YOUR BODY NEEDS TIME TO RECOVER","RUN EASY AND TAKE SHORT STEPS"]
    
    let tipsBegginerMarathon = ["Tell People, this makes you accountable", "Set a Specific Goal", "Make a Plan","Don't Overdo It"]
    
    let tipsBegginerHike = ["Start small and choose the right trail for your fitness level", "Familiarize yourself with the trail", " Check the weather","Tell someone where you will be."]
    
    
    //Professional
    let tipsProffesionalWalk = ["Warm-up activity – start slowly, do a few warm-up exercises and stretches first. Don’t walk immediately after a big meal.", "Build activity slowly – start with a 20 minute walk then increase gradually. Try to walk at least three times per week", "Use the correct technique – walk at a steady pace, swing your arms freely and stand as straight as you can. Your feet should step in a rolling action from the heel to the toe","Cool down – make sure you cool down after a long fast walk. Do a few stretching exercises."]
    
    let tipsProffesionalJog = ["Elite runners take their time warming up. They'll spend 20 to 40 minutes jogging two to three miles, doing strides and drills, and stretching", "Runners on a tight schedule may be tempted to skimp on—or skip—the warmup. But attempting a fast pace on cold muscles puts you at risk of injury, especially if you've just gotten out of bed", "Pros usually have a hawk-eyed coach standing trackside with a stopwatch to make sure they're hitting their splits","Some days runners feel great, other days not so much. If their legs feel leaden or they're way off their expected splits, elites adjust the workout"]
    
    let tipsProffesionalMarathon = ["Stick with familiar foods", " Go easy on the exercise", "Drink water…and more water.","Eat breakfast roughly two hours before race time"]
    
    let tipsProffesionalHike = ["Get ready faster. The easy way? Don’t unpack. When you finish a weekend trip, leave all the stuff you use for nearly every adventure—stove, sleeping pad, first-aid kit, repair kit—together in your pack", "Build your endurance. Everyone who’s ever hired a guide has seen “guide strength.” Bryan Pope, of Earth Native Wilderness School, reveals his workout.","Pack for density. Gear lashed to the outside of your pack is less secure. "]
    
    
    //Top class
    let tipsTopClassWalk = ["Invest in good shoes", "Always warm up by walking at a slow or normal walking pace for five minutes before picking up the tempo of your workout.", "Pay attention to your heart rate and breathing.","Use good walking posture"]
    
    let tipsTopClassJog = ["Many runners hold tension in their upper body, which can make your regular run feel twice as hard. ", "Your feet are the only thing that comes into contact with the ground every single time you walk and run yet they’re almost always hidden away in shoes and never shown any love.", "When you run, your brain is constantly communicating with your muscles to figure out how you can run more efficiently (i.e. with less muscle activation)"]
    
    let tipsTopClassMarathon = ["Don’t go out too fast; you’ll finish more slowly and probably hit the wall", "Steady = Fast; even pacing leads to better finish-times.", "Run with pacers; they’ll help you run an evenly paced race","Don’t plan for a fast finish; you’ll finish slower with too much in the tank"]
    
    let tipsTopClassHike = ["Navigation: Stay on the right trail with a good map (that you know how to read), compass, and/or GPS.", "Sun protection: Even on a cold day, hikers get plenty of UV exposure, especially on mountains that don’t have a lot of tree cover. Take care of eyes and skin with UV-blocking sunglasses, plenty of wide-spectrum sunscreen, and a hat", "Insulation: Pack a few layers of extra non-cotton clothing — no matter how hot it is outside, it’s always important to bring an extra layer just in case you get stranded or the weather changes.","Illumination: Even if you’re only planning to be out during the day, bring a headlamp or lightweight flashlight. Make sure it has fully charged batteries before leaving the house."]
    
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
