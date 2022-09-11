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

    var width = UIScreen.main.bounds.width
    var height = UIScreen.main.bounds.height

    @State var opacity = false
    @State var secondopacity = 0.5
    @State var thirdopacity = 1.0
    @State var nextMap = false

    @State var showNavHome = false
    
    @StateObject var step = Steps()
    
    var body: some View {
        
        VStack(alignment: .center) {
            ZStack {
                HStack {
                    // toggle map opacity switch
                    Toggle("toggle opacity", isOn: $opacity)
                        .padding(.trailing, 130)
                        .padding()
//                        .padding(.top, 50)
                        .position(x: 200)
                        .frame(width: 350, height: 50)
                        .foregroundColor(colour)
                        .tint(colour)
                }
                .frame(maxWidth: .infinity)
                .padding(.top, 50)
                .background(backgroundColour)
                .edgesIgnoringSafeArea(.all)
            }
            .edgesIgnoringSafeArea(.all)
            
            ZStack {
                ZoomableScrollView {
                    ZStack {
                        Image("map")
                            .scaledToFit()
                            .opacity(0.4)
                        // if switch is toggled, map will be replaced with a full opacity version
                        if opacity {
                            Image("map")
                                .scaledToFit()
                                .opacity(1)
                        }
                        
                        Image("map2")
                            .scaledToFit()
                            .opacity(0)
                        // if flashcard is swiped, next map is shown and first map is hidden
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
                        // location of arrow corresponds to phone location with minor adjustments for screen
                                .position(x: CGFloat(screenpositions.myLocation.0)/12, y: CGFloat(screenpositions.myLocation.1)*13000)
                    
                                .foregroundColor(.blue)
                        // make arrow spin according to where phone is facing
//                                .rotationEffect(Angle(degrees: self.compassHeading.degrees), anchor: .init(x: CGFloat(screenpositions.myLocation.0)/12, y: CGFloat(screenpositions.myLocation.1)*12500))

                        Escalator1()
                            .opacity(thirdopacity)
                        
                        Escalator1top()
                            .opacity(secondopacity)
                        
                        Line()
                            .stroke(style: StrokeStyle(lineWidth: 2, dash: [5]))
                            .foregroundColor(.yellow)
                            .opacity(secondopacity)
                        
                       Corridor1()
                            .opacity(secondopacity)
                    }
                    .rotationEffect(Angle(degrees: self.compassHeading.degrees))
                    .background(.white)
                }
                
                // shows where the phone is facing; kinda glitchy but not sure how to solve that
                CompassView()
                    .scaleEffect(0.5)
                    .background(.black)
                    .cornerRadius(40)
                    .fixedSize()
                    .position(y: -55)
                    .padding(.leading, 330)
            }
            
            // flashcards for stepped directions
            FlashcardView()
                .frame(height: 130, alignment: .top)
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
