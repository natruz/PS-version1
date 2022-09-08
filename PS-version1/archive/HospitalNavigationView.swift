//
//  HospitalNavigationView.swift
//  PS-version1
//
//  Created by NATALIE CHEN HUI REGINA RUZSICSK stu on 19/7/22.
//

import SwiftUI

struct HospitalNavigationView: View {
    
    @State var navigates = [
        Navigate(destination: "Room 1", numberOfSteps: 3),
    ]
    
    @State var currentNavigate = 0
    @State var currentStep = 0
    @State var isSheetPresented = false
    
    var body: some View {
        VStack {
            ProgressView(value: Double(currentStep),
                         total: Double(navigates[0].numberOfSteps))
            .padding()
            Text(navigates[0].destination)
            Button("Next Step") {
                currentStep += 1
                if currentStep == navigates[currentNavigate].numberOfSteps {
                    isSheetPresented = true
                    currentStep = 0
                }
            }
//            Button("Start over") {
//                currentStep = 0
//            }
        }
        .sheet(isPresented: $isSheetPresented) {
            CongratsScreen()
        }
    }
}

struct HospitalNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        HospitalNavigationView()
    }
}
