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
    @StateObject var ssfsfs = stepakhds()
    // line should be connecting my location and next landmark, depending on which step the thing is on the addLine one should be that location
    // maybe a new var and it is set to like newVar == 2 {
    //                                          anotherVar (this one for storing the location) = CGFloat(screenpositions.escalator.0)/10)+350
    // and so on for the others
    // might want to store these in step manager
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: CGFloat(screenpositions.myLocation.0)/10, y: CGFloat(screenpositions.myLocation.1)*21000))
        path.addLine(to: CGPoint(x: (CGFloat(screenpositions.escalator.0)/10)+350, y: CGFloat(screenpositions.escalator.1)*18000))
        return path
    }
}
