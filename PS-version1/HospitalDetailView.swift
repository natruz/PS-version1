//
//  HospitalDetailView.swift
//  PS-version1
//
//  Created by NATALIE CHEN HUI REGINA RUZSICSK stu on 18/7/22.
//

import SwiftUI

struct HospitalDetailView: View {
    
    @State var hospital: Hospital
    
    var body: some View {
        VStack {
            Image(hospital.image)
                .resizable()
                .scaledToFit()
            Text(hospital.name)
                .foregroundColor(textColour)
                .font(.largeTitle)
                .padding()
                .frame(maxWidth: .infinity)
                .background(backgroundColour)
                .border(.white)
            VStack {
                Text("Location (directions)")
                Text("Opening Hours")
                Text("Services")
                Text("General Information")
            }
            .background(.white)
            Spacer()
        }
        .navigationBarTitle("")
    }
}

struct HospitalDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HospitalDetailView(hospital: Hospital(name: "Hospital A", image: "PS-hospitalA"))
    }
}
