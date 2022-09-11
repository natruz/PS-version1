//
//  StepManager.swift
//  testing
//
//  Created by FAITH CHONG RUI EN stu on 7/9/22.
//

import Foundation
import SwiftUI

struct StepsContent: Codable, Identifiable {
    var id: Int
    var description: String
}

class Steps: ObservableObject {
    lazy var steplist: [StepsContent] = [StepsContent(id: 1, description: "go straight"),
                                         StepsContent(id: 2, description: "go up a floor"),
                                         StepsContent(id: 3, description: "turn left"),
                                         StepsContent(id: 4, description: "turn right")]
}
