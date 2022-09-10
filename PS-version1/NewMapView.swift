//
//  NewMapView.swift
//  testing
//
//  Created by FAITH CHONG RUI EN stu on 4/9/22.
//

import SwiftUI

struct NewMapView: View {
    @StateObject var locationmanager = LocationManager()
    @StateObject var screenpositions = Positioning()
    @ObservedObject var compassHeading = CompassHeading()
//    @StateObject var sfsfs = Markers(
//    @State var ds = ZoomableScrollView<NewMapView>

    var width = UIScreen.main.bounds.width
    var height = UIScreen.main.bounds.height
    
//    lazy var xpos = CGFloat(scs.helpme.0)/10
//    lazy var ypos = CGFloat(scs.helpme.1)+(height/2)
//    mutating func updateMarkers() -> Void {
//        let xtrans = xpos*346
//        let ytrans = ypos*377
//
//        sfsfs.markers = CGPoint(x: xtrans, y: ytrans)
//    }
    @State private var opacity = false
    @State var anotheropacity = 0.5
    @State var thirdopacity = 1.0
    @State private var nextMap = false
    @State private var currentAmount = 0.0
    @State private var finalAmount = 1.0
    @State var showNavHome = false
    @StateObject var ssfsfs = stepakhds()
    
//    if ssfsfs.steps.count == 2 {
//        nextMap = true
//        anotheropacity = 1.0
//        thirdopacity = 0.5
//    }

    var body: some View {
        VStack(alignment: .center) {
            ZStack {
                HStack {
                    Toggle("toggle opacity", isOn: $opacity)
                        .padding(.trailing, 130)
                        .padding()
//                        .padding(.top, 100)
//                        .position(x: 20, y: 60)
                        .frame(width: 350)
                        .foregroundColor(colour)
                        .tint(colour)
                }
                .frame(maxWidth: .infinity)
                .padding(.top, 35)
                .background(backgroundColour)
            }
            .navigationTitle("")
            .navigationBarHidden(true)
            
            ZStack {
                ZoomableScrollView {
    //                ZoomableScrollView<NewMapView>.updateMarkers()
                    ZStack {
                        Image("map")
                            .scaledToFit()
                            .opacity(0.4)
                        if opacity {
                            Image("map")
                                .scaledToFit()
                                .opacity(1)
                        }
                        Image("map2")
                            .scaledToFit()
                            .opacity(0)
                        if nextMap == true {
                            Image("map2")
                                .scaledToFit()
                                .opacity(1)
                            Image("map")
                                .scaledToFit()
                                .opacity(0)
                        }
                            Line()
                                .stroke(style: StrokeStyle(lineWidth: 2, dash: [5]))
                                .foregroundColor(.blue)
                                .opacity(thirdopacity)
                                
                            Image(systemName: "location.fill")
                                .frame(width: 10, height: 10, alignment: .center)
                                .position(x: CGFloat(screenpositions.myLocation.0)/10, y: CGFloat(screenpositions.myLocation.1)*21000)
                                .foregroundColor(.blue)
//                                .rotationEffect(Angle(degrees: self.compassHeading.degrees), anchor: .init(x: CGFloat(screenpositions.myLocation.0)/12, y: CGFloat(screenpositions.myLocation.1)*12500))
                        
                                .scaleEffect(finalAmount + currentAmount)
//                                .onTapGesture(count: 2) {
//    //                                MagnificationGesture()
//    //                                    .onChanged { amount in
//    //                                        currentAmount = amount - 1
//    //                                    }
//    //                                    .onEnded { amount in
//    //                                        finalAmount += currentAmount
//    //                                        currentAmount = 0
//    //                                    }
//                                    print(CGFloat(screenpositions.landmark1.0))
//                                    print(CGFloat(screenpositions.landmark1.1))
//
//                                }
                            
                                .onTapGesture(count: 2) {
                                    print(UIScreen.main.bounds.maxX)
                                    print(CGFloat(screenpositions.escalator.0))
                                    print(CGFloat(screenpositions.escalator.1))
    
                                }
//                            Circle()
//                                .frame(width: 10, height: 10, alignment: .center)
//                                .position(x: (CGFloat(screenpositions.landmark1.0)/12)+210, y: CGFloat(screenpositions.landmark1.1)*12500)
//                                .foregroundColor(.blue)
                        Escalator1()
                            .opacity(thirdopacity)
                        Escalator1top()
                            .opacity(anotheropacity)
                        Line()
                            .stroke(style: StrokeStyle(lineWidth: 2, dash: [5]))
                            .foregroundColor(.yellow)
                            .opacity(anotheropacity)
                       Corridor1()
                            .opacity(anotheropacity)
                    }
                    .rotationEffect(Angle(degrees: self.compassHeading.degrees))
                    .background(.white)
                }
//                .rotationEffect(Angle(degrees: self.compassHeading.degrees))
                
                CompassView()
                    .scaleEffect(0.5)
                    .background(.black)
                    .cornerRadius(40)
                    .fixedSize()
                    .position(y: -55)
                    .padding(.leading, 370)
            }
//            ZoomWithMarkersViewController()
            
            FlashcardView()
                .frame(height: 130, alignment: .bottom)
                .frame(maxWidth: .infinity)
                .cornerRadius(20)
        }
        .navigationBarHidden(true)
        .navigationBarTitle("", displayMode: .inline)
        .edgesIgnoringSafeArea([.top, .bottom])
        .background(.cyan)
        .navigate(to: NavigationHomeView(), when: $showNavHome)
    }
}

struct NewMapView_Previews: PreviewProvider {
    static var previews: some View {
        NewMapView()
    }
}
