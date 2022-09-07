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
    private let steps: [Steps] = [Steps(id: 1, description: "go straight"),
                          Steps(id: 2, description: "turn left"),
                          Steps(id: 3, description: "go up a floor"), Steps(id: 4, description: "turn right")]
    
    // https://developer.apple.com/forums/thread/687900
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = UIColor.systemIndigo
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.cyan
     }
    
    var body: some View {
        TabView(selection: $stepnumber) {
            ForEach(0..<steps.count) { index in
//                  steps[index]
//                      .tag(index)
//
                  HStack {
                      Text("\(steps[stepnumber % steps.count].id)")
                          .padding(10)
                          .background(.blue)
                          .foregroundColor(.white)
                          .font(.system(size: 30))
                          .cornerRadius(10)
                          
                      Text(steps[stepnumber % steps.count].description)
                          .foregroundColor(.black)
                          .font(.system(size: 25))
                          .minimumScaleFactor(0.02)
                          .lineLimit(nil)
//                          .fixedSize(horizontal: false, vertical: true)
                          .padding(.horizontal, 10)
                  }
                  .padding()
                  .padding(.trailing, 10)
                  
                  .frame(width: 370, height: 130, alignment: .top)
                  
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
