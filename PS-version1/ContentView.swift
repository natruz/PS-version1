//
//  ContentView.swift
//  PS-version1
//
//  Created by NATALIE CHEN HUI REGINA RUZSICSK stu on 18/7/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            List(hospitals) { hospital in
                NavigationLink(destination: HospitalView(hospital: hospital)) {
                    VStack {
                        Image(hospital.image)
                            .resizable()
                            .scaledToFit()
                            .frame(alignment: .center)
                        Text(hospital.name)
                            .bold()
                            .font(.title)
                    }
                }
            }
            .navigationTitle("Welcome to Medind!")
            .searchable(text: $searchText)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension View {
    func navigate<NewView: View>(to view: NewView, when binding: Binding<Bool>) -> some View {
        NavigationView {
            ZStack {
                self
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
                
                NavigationLink(
                    destination: view
                        .navigationBarTitle("")
                        .navigationBarHidden(true),
                    isActive: binding
                ) {
                    EmptyView()
                }
            }
        }
        .navigationViewStyle(.stack)
    }
}
