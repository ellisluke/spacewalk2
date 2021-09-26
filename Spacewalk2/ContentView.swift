//
//  ContentView.swift
//  Spacewalk2
//
//  Created by Luke Ellis on 9/25/21.
//

import SwiftUI
import HealthKit

struct ContentView: View {
    @State private var step: Double = 0.0
    var healthStore: HealthStore?
    
    init() {
        healthStore = HealthStore()
        
    }
    
    private func updateUI(_ statistic: HKStatistics) {
        let paces: Double? = (statistic.sumQuantity()?.doubleValue(for: HKUnit.mile()))
        if let pace = paces{
            step = pace
        }
    }
    
    var body: some View {
        TabView{
            
            Register().tabItem {Label("Menu", systemImage: "square.and.pencil")}
            Login().tabItem {Label("Menu", systemImage:"list.dash")}
            SpacewalkView(stepCount: step).tabItem {Label("SpacewalkView", systemImage: "list.dash")}
            StepView(steps: step)
        }
            .onAppear {
                if let healthStore = healthStore {
                    print("Survived 1")
                    healthStore.requestAuthorization {
                        success in
                        print("Survived 2")
                        print(success)
                        if success {
                            print("Survived 2.5")
                            healthStore.getStep {
                                statistic in
                                print("Survived 3")
                                if let statistic = statistic {
                                    print("Survived 4")
                                    updateUI(statistic)
                                }
                            }
                        }
                        
                    }
                    
                }
            }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
