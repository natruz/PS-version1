//
//  DoctorView.swift
//  PS-version1
//
//  Created by NATALIE CHEN HUI REGINA RUZSICSK stu on 18/7/22.
//

import SwiftUI

struct DoctorView: View {
    var body: some View {
        
        // background image
        ZStack(alignment: .top) {
            Image("background2")
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
                    // doctor picture
                    Image(systemName: "circle.fill")
                        .resizable()
                        .scaledToFit()
                        .padding()
                    
                    // placeholders
                    VStack(alignment: .leading) {
                        Text("Doctor Name")
                        Text("Certifications")
                        Text("Department")
                        Text("Email")
                    }
                }
                .frame(width: 400, height: 200)
                .foregroundColor(.white)
                .background(colour)
                .cornerRadius(20)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(.white, lineWidth: 4)
                )

                // buttons to service information
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

                // buttons to other information
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

                // button to show a route to the doctor's office / clinic
                Button {
                    // code
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
