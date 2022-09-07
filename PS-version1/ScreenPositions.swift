//
//  ScreenPositions.swift
//  testing
//
//  Created by FAITH CHONG RUI EN stu on 22/8/22.
//
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
    
//    let p0 = Coords(scrX: Float(UIScreen.main.bounds.minX), scrY: Float(UIScreen.main.bounds.minY), lat: 1.32253, long: 103.84567)
//    let p1 = Coords(scrX: Float(UIScreen.main.bounds.maxX), scrY: Float(UIScreen.main.bounds.maxY), lat: 1.31992, long: 103.84570)
    let p0 = Coords(scrX: 0, scrY: 0, lat: 1.32253, long: 103.84567)
    let p1 = Coords(scrX: 346.0, scrY: 377.0, lat: 1.31992, long: 103.84570)

    var earthRadius = 6371

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
    
        lazy var myLife = self.latlongToGlobalXY(lati: 1.32253, lng: 103.84567)
        lazy var sucks = self.latlongToGlobalXY(lati: 1.31992, lng: 103.84570)
        
        func latlngToScreenXY(lati: Float, lng: Float) -> (Float, Float) {
            //Calculate global X and Y for projection point
            let help: (Float, Float) = latlongToGlobalXY(lati: lati, lng: lng)
            
            //Calculate the percentage of Global X position in relation to total global width
            let PerX = (help.0-myLife.0)/(sucks.0 - myLife.0)
            //Calculate the percentage of Global Y position in relation to total global height
            let PerY = (help.1-myLife.1)/(sucks.1 - myLife.0)
            
            let x: Float = p0.scrX + (p1.scrX - p0.scrX)*PerX
            let y: Float = p0.scrY + (p1.scrY - p0.scrY)*PerY
            
            //Returns the screen position based on reference points
            return (x, y)
        }
    lazy var myLocation = latlngToScreenXY(lati: 1.3215036989460596, lng: 103.84589699073983)
    lazy var landmark1 = latlngToScreenXY(lati: 1.3210407110784648, lng: 103.84563443743097)
    lazy var landmark1up = latlngToScreenXY(lati: 1.3210407110784648, lng: 103.84563443743097)
}

