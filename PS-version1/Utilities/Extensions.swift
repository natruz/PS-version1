//
//  Extensions.swift
//  PS-version1
//
//  Created by FAITH CHONG RUI EN stu on 7/9/22.
//

import Foundation
import SwiftUI

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

