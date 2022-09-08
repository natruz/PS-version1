//
//  ContentView.swift
//  PS-version1
//
//  Created by NATALIE CHEN HUI REGINA RUZSICSK stu on 18/7/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var searchText = ""
    
    init() {
        UISearchBar.appearance().tintColor = UIColor.init(Colours.coolblue)
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.init(Colours.coolblue)]
        UITextField.appearance(whenContainedInInstancesOf: [UISearchBar.self]).backgroundColor = UIColor.init(Colours.coolblue)
        UITextField.appearance(whenContainedInInstancesOf: [UISearchBar.self]).tintColor = .white
        UITextField.appearance(whenContainedInInstancesOf: [UISearchBar.self]).attributedPlaceholder = NSAttributedString(string: "placeholder", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        (UITextField.appearance(whenContainedInInstancesOf: [UISearchBar.self]) ).defaultTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        UIListContentView.appearance().backgroundColor = .cyan
    }
    
    
    var body: some View {
        NavigationView {
            List(hospitals) { hospital in
                NavigationLink(destination: HospitalView(hospital: hospital)) {
                   
                    VStack {
                        Image(hospital.image)
                            .resizable()
                            .scaledToFit()
                            .border(Colours.coolblue, width: 3)
                            .cornerRadius(20)
                            .frame(alignment: .center)

                        Text(hospital.name)
                            .bold()
                            .font(.title)
                            .foregroundColor(.indigo)
                    }
                }
                .listRowBackground(Colours.lightblue)
                .listRowSeparatorTint(.white)
                .listItemTint(.white)
                
            }
            .navigationTitle("Welcome to Medind!")
            .searchable(text: $searchText)
            .listItemTint(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
