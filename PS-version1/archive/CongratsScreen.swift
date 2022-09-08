//
//  CongratsScreen.swift
//  PS-version1
//
//  Created by NATALIE CHEN HUI REGINA RUZSICSK stu on 19/7/22.
//

import SwiftUI

struct CongratsScreen: View {
    var body: some View {
        VStack {
            Text("Congratulations! You've made it to your destination!")
            Text("You have reached (destination)")
            Button("Back to home") {
                
            }
        }
    }
}

struct CongratsScreen_Previews: PreviewProvider {
    static var previews: some View {
        CongratsScreen()
    }
}
