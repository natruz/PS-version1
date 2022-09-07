//
//  HospitalView.swift
//  PS-version1
//
//  Created by NATALIE CHEN HUI REGINA RUZSICSK stu on 18/7/22.
//

import SwiftUI

struct HospitalView: View {
    
    @State var hospital: Hospital

    var body: some View {
        TabView {
            HospitalDetailView(hospital: hospital)
            .tabItem {
                Label("Hospital", systemImage: "house.fill")
            }
            DoctorView()
                .tabItem {
                    Label("Doctors", systemImage: "person.fill")
                }
            NavigationHomeView()
            .tabItem {
                Label("Navigation", systemImage: "mappin")
            }
        }
    }
}

struct HospitalView_Previews: PreviewProvider {
    static var previews: some View {
        HospitalView(hospital: Hospital(name: "", image: ""))
    }
}
