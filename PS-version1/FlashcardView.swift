//
//  FlashcardView.swift
//  testing
//
//  Created by FAITH CHONG RUI EN stu on 6/9/22.
//
import Foundation
import SwiftUI

// direction flashcards
struct FlashcardView: View {
   
    @State private var stepnumber = 0
//    @ObservedObject var step = Steps()
    
    // https://developer.apple.com/forums/thread/687900
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = UIColor.systemIndigo
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.cyan
     }
    
//    func dsds() {
//        if ssfsfs.steps[stepnumber].id == 1 {
//
//        }
//    }
    
//    struct CardContent: View {
//        var flashcard = FlashcardView()
//        var body: some View {
//            HStack {
//                Text("\(step.steplist[stepnumber % step.steplist.count].id)")
//                    .padding(10)
//                    .background(.blue)
//                    .foregroundColor(.white)
//                    .font(.system(size: 30))
//                    .cornerRadius(10)
//
//                Text(step.steplist[stepnumber % step.steplist.count].description)
//                    .foregroundColor(.black)
//                    .font(.system(size: 25))
//                    .minimumScaleFactor(0.02)
//                    .lineLimit(nil)
//    //                          .fixedSize(horizontal: false, vertical: true)
//                    .padding(.horizontal, 10)
//            }
//        }
//    }
    @State var arr = Steps().steplist
    var body: some View {
        
        TabView(selection: $stepnumber) {
            ForEach(0..<Steps().steplist.count, id: \.self) { _ in
//                self.arr

                  HStack {
                      Text("\(Steps().steplist[stepnumber % Steps().steplist.count].id)")
                          .padding(10)
                          .background(.blue)
                          .foregroundColor(.white)
                          .font(.system(size: 30))
                          .cornerRadius(10)

                      Text(Steps().steplist[stepnumber % Steps().steplist.count].description)
                          .foregroundColor(.black)
                          .font(.system(size: 25))
                          .minimumScaleFactor(0.02)
                          .lineLimit(nil)
//                          .fixedSize(horizontal: false, vertical: true)
                          .padding(.horizontal, 10)
                  }
//                  .padding()
                  .padding(.trailing, 10)
//                  .padding(.top, 10)
                
                  .background(Image("flashcardbg").opacity(0.1))
                  .background(.white)
//                  .tag(Steps().steplist.index)
            }
            
        }
//        .onChange(of: ssfsfs.steps[stepnumber].id) { newValue in
//            debugPrint("[a]: new value \(newValue)")
//            ddds.dsds()
//        }
        // https://stackoverflow.com/questions/67032651/how-to-detect-swiping-and-execute-an-action-upon-it-with-an-ios14-tabviews-pa
        // makes the other landmarks visible when step is changed
        .onChange(of: stepnumber) { newValue in
            debugPrint("[a]: new value \(newValue)")
            NewMapView().nextMap = true
            NewMapView().secondopacity = 1.0
            NewMapView().thirdopacity = 0.5
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct FlashcardView_Previews: PreviewProvider {
    static var previews: some View {
        FlashcardView()
    }
}
