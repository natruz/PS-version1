//
//  CompassMarkerView.swift
//  testing
//
//  Created by FAITH CHONG RUI EN stu on 18/7/22.
//

import SwiftUI


struct CompassMarkerView: View {
    let marker: Marker
    let compassDegress: Double
    
    var body: some View {
        VStack {
//            // 1
//            Text(marker.degreeText())
//                .fontWeight(.light)
//                .rotationEffect(self.textAngle())
            // 2
            Capsule()
                .frame(width: self.capsuleWidth(),
                       height: self.capsuleHeight())
                .foregroundColor(self.capsuleColor())
                .padding(.bottom, 60)

            // 3
//            Text(marker.label)
//                .fontWeight(.bold)
//                .rotationEffect(self.textAngle())
//                .padding(.bottom, 80)
        }
        .rotationEffect(Angle(degrees: marker.degrees)) // 4
    }
    
    // 1
    private func capsuleWidth() -> CGFloat {
        return self.marker.degrees == 0 ? 10 : 5
    }

    // 2
    private func capsuleHeight() -> CGFloat {
        return self.marker.degrees == 0 ? 30 : 20
    }

    // 3
    private func capsuleColor() -> Color {
        return self.marker.degrees == 0 ? .red : .gray
    }

    // 4
    private func textAngle() -> Angle {
        return Angle(degrees: -self.compassDegress - self.marker.degrees)
    }
}

//struct CompassMarkerView_Previews: PreviewProvider {
//    static var previews: some View {
//        CompassMarkerView(marker: Marker.markers(),
//                          compassDegress: 0)
//    }
//}
