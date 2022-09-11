//
//  DoctorView.swift
//  PS-version1
//
//  Created by NATALIE CHEN HUI REGINA RUZSICSK stu on 18/7/22.
//

import SwiftUI

struct DoctorView: View {
    
    @Environment(\.openURL) var openURL
    
    var body: some View {
        
        // background image
        ZStack(alignment: .top) {
            Image("background2")
                .scaledToFit()
                .opacity(0.2)
                .background(.white)
                .ignoresSafeArea(.all)
            
            VStack {
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
                .onTapGesture {
                    let url = URL(string: "https://www.ttsh.com.sg/Patients-and-Visitors/Medical-Services/Pages/default.aspx")
                    if let url = url {
                        openURL(url)
                    }
                }
                // buttons to other information
                Button {
                    
                } label: {
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
                Text("This page is a work-in-progress, only the services button works.")
                    .padding()
                    .background(.gray)
                    .cornerRadius(15)
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
