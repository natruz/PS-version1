//
//  NavigationFormView.swift
//  PS-version1
//
//  Created by NATALIE CHEN HUI REGINA RUZSICSK stu on 19/7/22.
//

import SwiftUI

struct NavigationFormView: View {
    
    @State var destination = ""
    @Environment(\.dismiss) var dismiss
    
    @State var startJourney = false

    var body: some View {
        VStack {
            Form {
                TextField("Destination", text: $destination)
                Button {
                    dismiss()
                    startJourney = true
                } label: {
                    Text("Start Journey")
                }
//                NavigationLink(destination: JourneyView(steps: 6)) {
//                    Text("Start Journey")
//                }
            }
            NavigationLink(destination: JourneyView(steps: 9, destination: "Reoom 1"), isActive: $startJourney) {
            }
        }
    }
}

struct NavigationFormView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationFormView(destination: "")
    }
}
