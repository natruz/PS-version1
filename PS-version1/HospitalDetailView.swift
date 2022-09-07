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
            Rectangle()
                .foregroundColor(.gray)
        }
        .navigationBarTitle(hospital.name)
    }
}

struct HospitalDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HospitalDetailView(hospital: Hospital(name: "Hospital A", image: "PS-hospitalA"))
    }
}
