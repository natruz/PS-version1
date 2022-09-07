//
//  CompassView.swift
//  testing
//
//  Created by FAITH CHONG RUI EN stu on 16/7/22.
//
// https://www.google.com/search?q=mapkit+compass&rlz=1C5CHFA_enSG946SG946&source=lnms&tbm=isch&sa=X&ved=2ahUKEwiRsLqdrsj5AhU41jgGHaTpATIQ_AUoAXoECAEQAw&biw=1440&bih=788&dpr=2&safe=active&ssui=on#imgrc=TDwDo2IO803f3M
// https://stackoverflow.com/questions/48713377/how-to-show-mapkit-compass

import SwiftUI

struct CompassView: View {
    
    @ObservedObject var compassHeading = CompassHeading()
    
    var body: some View {
        VStack {
            Capsule()
                .frame(width: 10,
                       height: 30)
                .foregroundColor(.white)

            ZStack {
                ForEach(Marker.markers(), id: \.self) { marker in
                    CompassMarkerView(marker: marker,
                                    compassDegress: 0)
                }
            }
            .frame(width: 50,
                   height: 90)
            .rotationEffect(Angle(degrees: self.compassHeading.degrees))
            .statusBar(hidden: true)
        }
        .frame(width: 50,
               height: 75, alignment: .center)
    }
}

struct CompassView_Previews: PreviewProvider {
    static var previews: some View {
        CompassView()
    }
}
