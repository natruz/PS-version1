//
//  HospitalDetailView.swift
//  PS-version1
//
//  Created by NATALIE CHEN HUI REGINA RUZSICSK stu on 18/7/22.
//

import SwiftUI

struct HospitalDetailView: View {
    
    // pulling hospital data, right now it's placeholders
    @State var hospital: Hospital
    
    var body: some View {
        
            VStack {
                Image(hospital.image)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(20)
                    .frame(width: 400)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.white, lineWidth: 4)
                    )
                
                Text(hospital.name)
                    .font(.largeTitle)
                    .padding()
                    .minimumScaleFactor(2)
                    .scaledToFit()
                    .foregroundColor(textColour)
                    .frame(width: 400)
                    .background(backgroundColour)
                    .cornerRadius(20)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.white, lineWidth: 3)
                    )
                
                VStack {
                    Text("Location (directions)")
                    Text("Opening Hours")
                    Text("Services")
                    Text("General Information")
                }
                .padding()
                .padding(.horizontal, 70)
                .scaledToFit()
                .minimumScaleFactor(2)
                .foregroundColor(.blue)
                .frame(width: 400)
                .background(.white)
                .cornerRadius(20)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(.blue, lineWidth: 3)
                )
            }
            .navigationBarTitle("")
    }
}

struct HospitalDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HospitalDetailView(hospital: Hospital(name: "Hospital A", image: "PS-hospitalA"))
    }
}
