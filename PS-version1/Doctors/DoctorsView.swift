//
//  OthersView.swift
//  PS-version1
//
//  Created by NATALIE CHEN HUI REGINA RUZSICSK stu on 19/8/22.
//

import SwiftUI

let doctors = [
    DoctorProfile(name: "Ms Faith", qualifications: "Cool", department: "ADMT", email: "faith@gmail.com")
]

let doctor1 = DoctorProfile(name: "Ms Faith", qualifications: "Cool", department: "ADMT", email: "faith@gmail.com")

struct DoctorsView: View {
    var body: some View {
            List {
                ForEach(1...doctors.count, id: \.self) { _ in
//                    Text(DoctorProfile.name)
                }
            .navigationTitle("Doctors")
        }
//        ForEach(1...doctors.count, id: \.self) {_ in
//            VStack {
////                Text(doctors.name)
////                Text(doctors.qualifications)
//                Text(doctor1.name)
//                Text(doctor1.qualifications)
//                Text(doctor1.department)
//                Text(doctor1.email)
//                //                Text()
//            }
//        }
    }
}

struct DoctorsView_Previews: PreviewProvider {
    static var previews: some View {
        DoctorsView()
    }
}
