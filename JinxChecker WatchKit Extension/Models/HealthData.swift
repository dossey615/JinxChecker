//
//  HealthCheck.swift
//  JinxChecker WatchKit Extension
//
//  Created by 土居将史 on 2019/12/24.
//  Copyright © 2019 土居将史. All rights reserved.
//

import Foundation
import HealthKit
import WatchKit

class HealthData{
    
    var availableFlag:Bool = false
    var availableFlagMessage:String = "HealthKit can't used"
    
    init(){
        if HKHealthStore.isHealthDataAvailable(){
            availableFlag = true
            availableFlagMessage = "HealthKit can used"
        }
        allowedToGetHealthData()
    }
    
    func getAvailableFlagToString() -> String{
        return availableFlagMessage
    }
    
    func allowedToGetHealthData(){
        let healthStore = HKHealthStore()
        let allTypes = Set([HKObjectType.workoutType(),
        HKObjectType.quantityType(forIdentifier: .activeEnergyBurned)!,
        HKObjectType.quantityType(forIdentifier: .distanceCycling)!,
        HKObjectType.quantityType(forIdentifier: .distanceWalkingRunning)!,
        HKObjectType.quantityType(forIdentifier: .heartRate)!])
        if availableFlag {
            healthStore.requestAuthorization(toShare: allTypes, read: allTypes) { (success, error) in
                if !success {
                   print("取得できないよ")
                }
            }
        }
    }

}


