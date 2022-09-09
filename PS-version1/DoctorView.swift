//
//  DoctorView.swift
//  PS-version1
//
//  Created by NATALIE CHEN HUI REGINA RUZSICSK stu on 18/7/22.
//

import SwiftUI

struct DoctorView: View {
    var body: some View {
        ZStack(alignment: .top) {
            Image("background2")
//                    .resizable()
                .scaledToFit()
                .opacity(0.2)
                .background(.white)
                .ignoresSafeArea(.all)
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
                    VStack(alignment: .leading) {
                        Text("Doctor Name")
                        Text("Certifications")
                        Text("Department")
                        Text("Email")
                    }
    //                .padding()
                }
                .frame(width: 400, height: 200)
                .foregroundColor(.white)
                .background(colour)
                .cornerRadius(20)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(.white, lineWidth: 4)
                )


                NavigationLink(destination: ServicesView()) {
                    VStack {
                        Text("Services Available")
                            .font(.title)
                        Text("(Practices, Counselling)")
                            .font(.body)
                    }
                    .frame(width: 400, height: 150)
                    .foregroundColor(textColour)
                    .background(backgroundColour)
                    .cornerRadius(20)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.white, lineWidth: 4)
                    )
                }

                NavigationLink(destination: DoctorsView()) {
                    VStack {
                        Text("Similar:")
                            .font(.title)
                        Text("(Doctors, Services)")
                            .font(.body)
                    }
                    .frame(width: 400, height: 150)
                    .foregroundColor(textColour)
                    .background(secondaryBackgroundColour)
                    .cornerRadius(20)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.white, lineWidth: 4)
                    )
                }

                Button {
                    
                } label: {
                    Text("Locate")
                        .bold()
                        .frame(width: 400, height: 50)
                        .font(.title)
                        .foregroundColor(.white)
                        .background(tertiaryBackgroundColour)
                        .cornerRadius(20)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(.white, lineWidth: 4)
                        )
                }
            }
        }
        .padding(.top, 150)
    }
}

struct DoctorView_Previews: PreviewProvider {
    static var previews: some View {
        DoctorView()
    }
}
