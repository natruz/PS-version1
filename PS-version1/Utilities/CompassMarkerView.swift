//
//  CompassMarkerView.swift
//  testing
//
//  Created by FAITH CHONG RUI EN stu on 18/7/22.
//

// model view for the markers
// https://medium.com/@darrenleak1/build-a-compass-app-with-swiftui-f9b7faa78098

import Foundation
import SwiftUI

struct CompassMarkerView: View {
    let marker: Marker
    let compassDegress: Double
    
    var body: some View {
        VStack {

            // no text
            
            Capsule()
                .frame(width: self.capsuleWidth(),
                       height: self.capsuleHeight())
                .foregroundColor(self.capsuleColor())
                .padding(.bottom, 60)

            // no text
        }
        .rotationEffect(Angle(degrees: marker.degrees))
    }
    
    private func capsuleWidth() -> CGFloat {
        return self.marker.degrees == 0 ? 10 : 5
    }

    private func capsuleHeight() -> CGFloat {
        return self.marker.degrees == 0 ? 30 : 20
    }

    private func capsuleColor() -> Color {
        return self.marker.degrees == 0 ? .red : .gray
    }

//    private func textAngle() -> Angle {
//        return Angle(degrees: -self.compassDegress - self.marker.degrees)
//    }
}
