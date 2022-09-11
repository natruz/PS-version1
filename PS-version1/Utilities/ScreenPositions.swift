//
//  ScreenPositions.swift
//  testing
//
//  Created by FAITH CHONG RUI EN stu on 22/8/22.
//

// mapping irl coordinates to a phone screen
// https://stackoverflow.com/questions/16266809/convert-from-latitude-longitude-to-x-y#:~:text=latitude%20%3D%20Math.,radius)%20*%20Math.

import Foundation
import SwiftUI

struct Coords {
    var scrX: Float
    var scrY: Float
    var lat: Float
    var long: Float
}

class Positioning: ObservableObject {
    @StateObject var locationmanager = LocationManager()
    
    // top-left reference point
    let p0 = Coords(scrX: 0, scrY: 0, lat: 1.32253, long: 103.84567)
    // bottom-right reference point
    let p1 = Coords(scrX: 346.0, scrY: 377.0, lat: 1.31992, long: 103.84570)

    // earth radius in km
    var earthRadius = 6371

    // real time latitube & longitude
    var userLatitude: Float {
        return Float(locationmanager.lastLocation?.coordinate.latitude ?? 0)
    }
    
    var userLongitude: Float {
        return Float(locationmanager.lastLocation?.coordinate.longitude ?? 0)
    }
    
    // This function converts lat and lng coordinates to GLOBAL X and Y positions
    func latlongToGlobalXY(lati: Float, lng: Float) -> (Float, Float){
        //Calculates x based on cos of average of the latitudes
        let x = Float(earthRadius)*lng*cos((p0.lat + p1.lat)/2);
        //Calculates y based on latitude
        let y = Float(earthRadius)*lati;
        
        return (x, y)
        
    }
    
        // Calculate global X and Y for top-left reference point
        lazy var p0pos = self.latlongToGlobalXY(lati: 1.32253, lng: 103.84567)
        lazy var p1pos = self.latlongToGlobalXY(lati: 1.31992, lng: 103.84570)
        
        func latlngToScreenXY(lati: Float, lng: Float) -> (Float, Float) {
            //Calculate global X and Y for projection point
            let pos: (Float, Float) = latlongToGlobalXY(lati: lati, lng: lng)
            
            //Calculate the percentage of Global X position in relation to total global width
            let PerX = (pos.0-p0pos.0)/(p1pos.0 - p0pos.0)
            //Calculate the percentage of Global Y position in relation to total global height
            let PerY = (pos.1-p0pos.1)/(p1pos.1 - p0pos.0)
            
            //Returns the screen position based on reference points
            let x: Float = p0.scrX + (p1.scrX - p0.scrX)*PerX
            let y: Float = p0.scrY + (p1.scrY - p0.scrY)*PerY
            return (x, y)
        }
    
    // my location
    lazy var myLocation = latlngToScreenXY(lati: 1.3215036989460596, lng: 103.84589699073983)
//    if CGPoint.zero.angle(to: escalator) < 45 {
//      https://stackoverflow.com/questions/6064630/get-angle-from-2-positions
    // trying to detect the angle between points to say to go straight or otherwise
//    }
    
    // landmark locations
    lazy var escalator = latlngToScreenXY(lati: 1.3209173998445964, lng: 103.84551526365351)
    lazy var escalatorup = latlngToScreenXY(lati: 1.3209173998445964, lng: 103.84551526365351)
}

