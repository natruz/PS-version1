//
//  Landmarks.swift
//  PS-version1
//
//  Created by FAITH CHONG RUI EN stu on 10/9/22.
//

import SwiftUI

// hard coded landmarks in the hospital
struct Escalator1: View {
    @StateObject var locationmanager = LocationManager()
    @StateObject var screenpositions = Positioning()
    
    var body: some View {
        Circle()
            .frame(width: 10, height: 10, alignment: .center)
//            .position(x: (CGFloat(screenpositions.escalator.0)/10)+350, y: CGFloat(screenpositions.escalator.1)*18000)
            .position(x: (CGFloat(screenpositions.escalator.0)/12)+301, y: CGFloat(screenpositions.escalator.1)*12800)
            .foregroundColor(.blue)
            
    }
}

struct Escalator1top: View {
    @StateObject var locationmanager = LocationManager()
    @StateObject var screenpositions = Positioning()
    var body: some View {
        Circle()
            .frame(width: 10, height: 10, alignment: .center)
            .position(x: (CGFloat(screenpositions.escalatorup.0)/12)+301, y: CGFloat(screenpositions.escalatorup.1)*12800)
            .foregroundColor(.yellow)
            
    }
}

struct Corridor1: View {
    @StateObject var locationmanager = LocationManager()
    @StateObject var screenpositions = Positioning()
    var body: some View {
        Circle()
            .frame(width: 10, height: 10, alignment: .center)
            .position(x: (CGFloat(screenpositions.escalatorup.0)/12)+301, y: CGFloat(screenpositions.escalatorup.1)*12800)
            .foregroundColor(.yellow)
            
    }
}
