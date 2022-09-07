//
//  JourneyView.swift
//  PS-version1
//
//  Created by NATALIE CHEN HUI REGINA RUZSICSK stu on 17/8/22.
//

import SwiftUI

struct JourneyView: View {
    
    var steps: Int
    var destination: String
    var stepsCompleted = 0
    
    @State var returnTo = false
    @State var nee = NewMapView()
    var body: some View {
//        VStack {
//            HStack {
////                NavigationLink(destination: NavigationHomeView(), isActive: $returnTo) {
////                    Image(systemName: "xmark")
////                        .font(.largeTitle)
////                        .padding()
////                }
//                Button {
//                    returnTo = true
//                } label: {
//                    Image(systemName: "xmark")
//                    .font(.largeTitle)
//                    .padding()
//                }
//                Spacer()
//            }
//            VStack {
//                Rectangle()
//            }
//            HStack {
//                Image(systemName: "chevron.left")
//                    .font(.largeTitle)
//                Spacer()
//                ForEach(1...steps, id: \.self) {_ in
//                    Image(systemName: "circle.fill")
//                }
//                Spacer()
//                Image(systemName: "chevron.right")
//                    .font(.largeTitle)
//            }
//            .padding()
//        }
//        .padding()
//        .navigationBarHidden(true)
//        .navigate(to: NavigationHomeView(), when: $returnTo)
        NewMapView()
    }
}

struct JourneyView_Previews: PreviewProvider {
    static var previews: some View {
        JourneyView(steps: 5, destination: "Room 1")
    }
}
