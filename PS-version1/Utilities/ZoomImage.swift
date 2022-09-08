//
//  ZoomImage.swift
//  testing
//
//  Created by FAITH CHONG RUI EN stu on 6/9/22.
//
// https://stackoverflow.com/questions/58341820/isnt-there-an-easy-way-to-pinch-to-zoom-in-an-image-in-swiftui

import Foundation
import UIKit
import SwiftUI

struct Markers {
    var yPCT: CGFloat = 0
    var xPCT: CGFloat = 0
    
//    var markers: [Markers] = []
    var markers: CGPoint
}

struct ZoomableScrollView<Content: View>: UIViewRepresentable {
    
    
  private var content: Content
    

  init(@ViewBuilder content: () -> Content) {
    self.content = content()
  }

  func makeUIView(context: Context) -> UIScrollView {
    // set up the UIScrollView
    let scrollView = UIScrollView()
    scrollView.delegate = context.coordinator  // for viewForZooming(in:)
    scrollView.maximumZoomScale = 20
    scrollView.minimumZoomScale = 1
    scrollView.bouncesZoom = true

    // create a UIHostingController to hold our SwiftUI content
    let hostedView = context.coordinator.hostingController.view!
    hostedView.translatesAutoresizingMaskIntoConstraints = true
    hostedView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    hostedView.frame = scrollView.bounds
    scrollView.addSubview(hostedView)

    return scrollView
  }

  func makeCoordinator() -> Coordinator {
    return Coordinator(hostingController: UIHostingController(rootView: self.content))
  }

  func updateUIView(_ uiView: UIScrollView, context: Context) {
    // update the hosting controller's SwiftUI content
    context.coordinator.hostingController.rootView = self.content
    assert(context.coordinator.hostingController.view.superview == uiView)
  }

  // MARK: - Coordinator

  class Coordinator: NSObject, UIScrollViewDelegate {
    var hostingController: UIHostingController<Content>

    init(hostingController: UIHostingController<Content>) {
      self.hostingController = hostingController
    }

    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
      return hostingController.view
    }
  }
   
    
//    func updateMarkers() -> Void {
//            markers.forEach { v in
//                let x = NewMapView.frame.origin.x + v.xPCT * NewMapView.frame.width
//                let y = imgView.frame.origin.y + v.yPCT * imgView.frame.height
//
//                // for example:
//                //  put bottom-left corner of marker at coordinates
//                v.frame.origin = CGPoint(x: x, y: y - v.frame.height)
//
//                // or
//                //  put center of marker at coordinates
//                //v.center = CGPoint(x: x, y: y)
//            }
//        }
}
