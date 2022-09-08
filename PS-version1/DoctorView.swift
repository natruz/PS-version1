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
//            NavigationLink(destination: AppointmentView()) {
//                VStack {
//                    Text("Appointments")
//                        .font(.title)
//                    Text("(Book, Reschedule, Cancel)")
//                        .font(.body)
//                }
//                .frame(width: 350, height: 100)
//                .foregroundColor(.white)
//                .background(.gray)
//                .cornerRadius(15)
//            }
            HStack {
                Image(systemName: "circle.fill")
                    .resizable()
                    .scaledToFit()
                    .padding()
                VStack {
                    Text("Doctor Name")
                    Text("Certifications")
                    Text("Department")
                    Text("Email")
                }
                .padding()
            }
            .frame(width: 400, height: 250)
            .foregroundColor(.white)
            .background(colour)
            .cornerRadius(12)
            Spacer()
            NavigationLink(destination: ServicesView()) {
                VStack {
                    Text("Services Available")
                        .font(.title)
                    Text("(Practices, Counselling)")
                        .font(.body)
                }
                .frame(width: 358, height: 191)
                .foregroundColor(textColour)
                .background(backgroundColour)
                .cornerRadius(15)
            }
            Spacer()
            NavigationLink(destination: DoctorsView()) {
                VStack {
                    Text("Similar:")
                        .font(.title)
                    Text("(Doctors, Services)")
                        .font(.body)
                }
                .frame(width: 358, height: 134)
                .foregroundColor(textColour)
                .background(secondaryBackgroundColour)
                .cornerRadius(15)
            }
            Spacer()
            Button {
                
            } label: {
                Text("Locate")
                    .bold()
                    .frame(width: 358, height: 72)
                    .font(.title)
                    .foregroundColor(.white)
                    .background(tertiaryBackgroundColour)
                    .cornerRadius(15)
            }
            Spacer()
        }
    }
}

struct DoctorView_Previews: PreviewProvider {
    static var previews: some View {
        DoctorView()
    }
}
