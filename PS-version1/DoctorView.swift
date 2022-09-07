//
//  DoctorView.swift
//  PS-version1
//
//  Created by NATALIE CHEN HUI REGINA RUZSICSK stu on 18/7/22.
//

import SwiftUI

struct DoctorView: View {
    var body: some View {
        VStack {
            Rectangle()
            NavigationLink(destination: AppointmentView()) {
                VStack {
                    Text("Appointments")
                        .font(.title)
                    Text("(Book, Reschedule, Cancel)")
                        .font(.body)
                }
                .frame(width: 350, height: 100)
                .foregroundColor(.white)
                .background(.gray)
                .cornerRadius(15)
            }
            NavigationLink(destination: ServicesView()) {
                VStack {
                    Text("Services Available")
                        .font(.title)
                    Text("(Practices, Counselling)")
                        .font(.body)
                }
                .frame(width: 350, height: 100)
                .foregroundColor(.white)
                .background(.gray)
                .cornerRadius(15)
            }
            NavigationLink(destination: DoctorsView()) {
                VStack {
                    Text("Similar:")
                        .font(.title)
                    Text("(Doctors, Services)")
                        .font(.body)
                }
                .frame(width: 350, height: 100)
                .foregroundColor(.white)
                .background(.gray)
                .cornerRadius(15)
            }
        }
    }
}

struct DoctorView_Previews: PreviewProvider {
    static var previews: some View {
        DoctorView()
    }
}
