//
//  LineConnection.swift
//  testing
//
//  Created by FAITH CHONG RUI EN stu on 6/9/22.
//

import Foundation
import SwiftUI

struct Line: Shape {
    @StateObject var screenpositions = Positioning()
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: CGFloat(screenpositions.myLocation.0)/11, y: CGFloat(screenpositions.myLocation.1)*12500))
        path.addLine(to: CGPoint(x: (CGFloat(screenpositions.landmark1.0)/12)+210, y: CGFloat(screenpositions.landmark1.1)*12500))
        return path
    }
}
