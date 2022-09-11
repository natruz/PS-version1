//
//  Extensions.swift
//  PS-version1
//
//  Created by FAITH CHONG RUI EN stu on 7/9/22.
//

import Foundation
import SwiftUI

// for finding the angle between two points
// https://stackoverflow.com/questions/6064630/get-angle-from-2-positions
extension CGFloat {
    var degrees: CGFloat {
        return self * CGFloat(180) / .pi
    }
}

extension CGPoint {
    func angle(to comparisonPoint: CGPoint) -> CGFloat {
        let originX = comparisonPoint.x - x
        let originY = comparisonPoint.y - y
        let bearingRadians = atan2f(Float(originY), Float(originX))
        var bearingDegrees = CGFloat(bearingRadians).degrees

        while bearingDegrees < 0 {
            bearingDegrees += 360
        }

        return bearingDegrees
    }
}

// navigation between views
// https://stackoverflow.com/questions/6064630/get-angle-from-2-positions
extension View {
    func navigate<NewView: View>(to view: NewView, when binding: Binding<Bool>) -> some View {
        NavigationView {
            ZStack {
                self
                    .navigationBarTitle("")
                    .navigationBarHidden(true)

                NavigationLink(
                    destination: view
                        .navigationBarTitle("")
                        .navigationBarHidden(true),
                    isActive: binding
                ) {
                    EmptyView()
                }
            }
        }
        .navigationViewStyle(.stack)
    }
}

// failed colour extension
//extension UIColor {
//    convenience init(red: Int, green: Int, blue: Int) {
//        let newRed = CGFloat(red)/255
//        let newGreen = CGFloat(green)/255
//        let newBlue = CGFloat(blue)/255
//        
//        self.init(red: newRed, green: newGreen, blue: newBlue, alpha: 1.0)
//    }
//}
////let newSwiftColor = UIColor(red: 255, green: 165, blue: 0)

// failed zoom extension
//var doubleTapGesture: some Gesture {
//        TapGesture(count: 2).onEnded {
//            if currentScale <= min { currentScale = max } else
//            if currentScale >= max { currentScale = min } else {
//                currentScale = ((max - min) * 0.5 + min) < currentScale ? max : min
//            }
//        }
//    }
