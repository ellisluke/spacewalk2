//
//  HealthStore.swift
//  Spacewalk2
//
//  Created by Luke Ellis on 9/25/21.
//

import Foundation
import HealthKit

class HealthStore {
    var healthStore: HKHealthStore?
    var query: HKStatisticsQuery?
    
    init() {
        healthStore = HKHealthStore()
    }
    
    func getStep(completion: @escaping (HKStatistics?) -> Void) {
        print("Entered getstep")
        let stepType = HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier.distanceWalkingRunning)!
        
        print("Passed 1")
        
        
        
        let startDate = Calendar.current.startOfDay(for: Date())
        print("Passed 2")
        
        let predicate = HKQuery.predicateForSamples(withStart: startDate, end: Date(), options: .strictStartDate)
        print("Passed 3")
        query = HKStatisticsQuery(quantityType: stepType, quantitySamplePredicate: predicate, options: .cumulativeSum) {
                (_, statistics, _) in
                print("Passed 4")
                completion(statistics)
        }
        if let healthStore = healthStore, let query = self.query {
            healthStore.execute(query)
        }
        
        
    }
    
    func requestAuthorization(completion: @escaping (Bool) -> Void) {
        
        let stepType = HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier.distanceWalkingRunning)!
        
        guard let healthStore = self.healthStore else { return completion(false) }
        
        healthStore.requestAuthorization(toShare: [], read: [stepType]) { (success, error) in
            completion(success)
        }
        
    }
    
    
}
