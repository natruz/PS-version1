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
            ZStack(alignment:.top) {
                Image("background2")
//                    .resizable()
                    .scaledToFit()
                    .opacity(0.2)
                    .background(.white)
                    .ignoresSafeArea(.all)
                HospitalDetailView(hospital: hospital)
                    .padding(.top, 70)
            }
            .tabItem {
                Label("Hospital", systemImage: "house.fill")
            }
            
            DoctorView()
                .tabItem {
                    Label("Doctors", systemImage: "person.fill")
                }
            ZStack(alignment:.center) {
                Image("background2")
                //                    .resizable()
                    .scaledToFit()
                    .opacity(0.2)
                    .background(.white)
                    .ignoresSafeArea(.all)
                NavigationHomeView()
                   
//                    .padding(.top, 200)
                
            }
            .tabItem {
                Label("Navigation", systemImage: "mappin")
            }
        }
        .accentColor(.blue)
    }
}

//struct HospitalView_Previews: PreviewProvider {
//    static var previews: some View {
//        HospitalView(hospital: Hospital(name: "", image: ""))
//    }
//}
