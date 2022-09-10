//
//  StepManager.swift
//  testing
//
//  Created by FAITH CHONG RUI EN stu on 7/9/22.
//

import Foundation
import SwiftUI

struct Steps: Codable, Identifiable {
    var id: Int
    
    //        init(number: Int, description: String) {
    //            self.number = number
    //            self.description = description
    //        }
    
    //        var number: Int
    var description: String
    
}

class stepakhds: ObservableObject {
//    var id: Int
//    var description: String
    
    
    //    init(id: Int, description: String) {
    //        self.id = id
    //        self.description = description
    
    lazy var steps: [Steps] = [Steps(id: 1, description: "go straight"),
                               Steps(id: 2, description: "go up a floor"),
                               Steps(id: 3, description: "turn left"),
                               Steps(id: 4, description: "turn right")]
    //    }
}
