//
//  Landmarks.swift
//  PS-version1
//
//  Created by FAITH CHONG RUI EN stu on 10/9/22.
//

import SwiftUI

struct Escalator1: View {
    @StateObject var locationmanager = LocationManager()
    @StateObject var screenpositions = Positioning()
    
    var body: some View {
        Circle()
            .frame(width: 10, height: 10, alignment: .center)
            .position(x: (CGFloat(screenpositions.escalator.0)/10)+350, y: CGFloat(screenpositions.escalator.1)*18000)
            .foregroundColor(.blue)
            
    }
}

struct Escalator1top: View {
    @StateObject var locationmanager = LocationManager()
    @StateObject var screenpositions = Positioning()
    var body: some View {
        Circle()
            .frame(width: 10, height: 10, alignment: .center)
            .position(x: (CGFloat(screenpositions.escalatorup.0)/10)+350, y: CGFloat(screenpositions.escalatorup.1)*18000)
            .foregroundColor(.yellow)
            
    }
}

struct Corridor1: View {
    @StateObject var locationmanager = LocationManager()
    @StateObject var screenpositions = Positioning()
    var body: some View {
        Circle()
            .frame(width: 10, height: 10, alignment: .center)
            .position(x: (CGFloat(screenpositions.escalatorup.0)/10)+350, y: CGFloat(screenpositions.escalatorup.1)*18000)
            .foregroundColor(.yellow)
            
    }
}
