//
//  FlashcardView.swift
//  testing
//
//  Created by FAITH CHONG RUI EN stu on 6/9/22.
//
import Foundation
import SwiftUI

struct FlashcardView: View {
   
    @State private var stepnumber = 0
    @StateObject var ssfsfs = stepakhds()
    
    
    // https://developer.apple.com/forums/thread/687900
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = UIColor.systemIndigo
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.cyan
     }
    
    var body: some View {
        TabView(selection: $stepnumber) {
            ForEach(0..<ssfsfs.steps.count, id: \.self) { index in
//                  steps[index]
//                      .tag(index)
//
                  HStack {
                      Text("\(ssfsfs.steps[stepnumber % ssfsfs.steps.count].id)")
                          .padding(10)
                          .background(.blue)
                          .foregroundColor(.white)
                          .font(.system(size: 30))
                          .cornerRadius(10)
                          
                      Text(ssfsfs.steps[stepnumber % ssfsfs.steps.count].description)
                          .foregroundColor(.black)
                          .font(.system(size: 25))
                          .minimumScaleFactor(0.02)
                          .lineLimit(nil)
//                          .fixedSize(horizontal: false, vertical: true)
                          .padding(.horizontal, 10)
                  }
                  .padding()
                  .padding(.trailing, 10)
                  .padding(.top, 10)
                  
                  .background(Image("flashcardbg").opacity(0.1))
                  .background(.white)
              }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct FlashcardView_Previews: PreviewProvider {
    static var previews: some View {
        FlashcardView()
    }
}
