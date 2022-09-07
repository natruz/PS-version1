//
//  NavigationHomeView.swift
//  PS-version1
//
//  Created by NATALIE CHEN HUI REGINA RUZSICSK stu on 18/7/22.
//

import SwiftUI

struct NavigationHomeView: View {
    
    @State var isSheetShown = false
    
    var body: some View {
        VStack {
            Button {
                isSheetShown = true
            } label: {
                Text("Get me somewhere")
                    .padding()
                    .foregroundColor(.white)
                    .background(.gray)
                    .cornerRadius(15)
            }
            .sheet(isPresented: $isSheetShown) {
                NavigationFormView()
            }
        }
        //        .onAppear {
        // isSheetShown = true
        //        }
        //        .sheet(isPresented: $isSheetShown) {
        //            NavigationFormView()
        //        }
        //        NavigationView {
        //        NavigationView {
        //            NavigationLink(destination: HospitalNavigationView()) {
        //                Text("Start Navigation")
        //            }
        //        }
        //        .navigationBarHidden(true)
        //                .navigationTitle("Destination?Hospital")
        //                .searchable(text: $searchText)
        //        }
    }
}

struct NavigationHomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationHomeView()
    }
}
