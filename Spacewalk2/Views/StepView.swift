//
//  StepView.swift
//  Spacewalk2
//
//  Created by Luke Ellis on 9/25/21.
//

import Foundation
import HealthKit
import SwiftUI

struct StepView: View {
    var steps: Double
    
    var body: some View {
        Text(String(steps))
    }
    
}
