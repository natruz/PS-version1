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
    @State private var currentAmount = 0.0
    @State private var finalAmount = 1.0
    
    var body: some View {
        VStack(alignment: .center) {
            ZStack {
                VStack(alignment: .leading) {
                    Toggle("toggle opacity", isOn: $opacity)
                        .padding(.trailing, 30)
                        .position(x: 30, y: 40)
                        .frame(width: 200, height: 70)
                        .foregroundColor(.white)
                        .tint(.cyan)
                }
                .frame(width: 400, height: 110)
                .background(.blue)
            }
            
            ZStack {
                ZoomableScrollView {
    //                ZoomableScrollView<NewMapView>.updateMarkers()
                    ZStack {
                        Image("map")
                            .scaledToFit()
                            .opacity(0.4)
                           
//                            .padding()
                        if opacity {
                            Image("map")
                                .scaledToFit()
                                .opacity(1)
//                                .rotationEffect(Angle(degrees: self.compassHeading.degrees))
//                                .padding()
                        }
                            Line()
                                .stroke(style: StrokeStyle(lineWidth: 2, dash: [5]))
                                .foregroundColor(.blue)
                                
                            Image(systemName: "location.fill")
                                .frame(width: 10, height: 10, alignment: .center)
                                .position(x: CGFloat(screenpositions.myLocation.0)/12, y: CGFloat(screenpositions.myLocation.1)*12500)
                                .foregroundColor(.blue)
//                                .rotationEffect(Angle(degrees: self.compassHeading.degrees), anchor: .init(x: CGFloat(screenpositions.myLocation.0)/12, y: CGFloat(screenpositions.myLocation.1)*12500))
                        
                                .scaleEffect(finalAmount + currentAmount)
                                .onTapGesture(count: 2) {
    //                                MagnificationGesture()
    //                                    .onChanged { amount in
    //                                        currentAmount = amount - 1
    //                                    }
    //                                    .onEnded { amount in
    //                                        finalAmount += currentAmount
    //                                        currentAmount = 0
    //                                    }
                                    print(CGFloat(screenpositions.landmark1.0))
                                    print(CGFloat(screenpositions.landmark1.1))

                                }
                            
    //                            .onTapGesture(count: 2) {
    //                                print(UIScreen.main.bounds.maxX)
    //                                print(CGFloat(screenpositions.landmark1.0))
    //                                print(CGFloat(screenpositions.landmark1.1))
    //
    //                            }

                           
                            
                            Circle()
                                .frame(width: 10, height: 10, alignment: .center)
                                .position(x: (CGFloat(screenpositions.landmark1.0)/12)+200, y: CGFloat(screenpositions.landmark1.1)*12500)
                                .foregroundColor(.blue)
                        
                            
                        
//                        ZStack
                       
    //                    Button {
    //                        print(UIScreen.main.bounds.maxX)
    //                        print(CGFloat(screenpositions.landmark1.0))
    //                        print(CGFloat(screenpositions.landmark1.1))
    //                    } label: {
    //                        Image(systemName: "location.fill")
    //        //                    .position(x: (1348.3174/10)+(asas/8), y: -0.49218395+(aarg/2.1))
    //        //                    .position(x: (7560.0/40), y: 0.039210897+aarg/1.9)
    //        //                    .position(x: CGFloat(scs.helpme.0)/12, y: CGFloat(scs.helpme.1)+(height/2))
    //
    //                    }
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
                    .position(x: 330, y: -55)
            }
//            ZoomWithMarkersViewController()
            
            FlashcardView()
                .frame(width: 370, height: 130, alignment: .bottom)
                .cornerRadius(20)
            
        }
        .background(.cyan)
    }
}

struct NewMapView_Previews: PreviewProvider {
    static var previews: some View {
        NewMapView()
    }
}