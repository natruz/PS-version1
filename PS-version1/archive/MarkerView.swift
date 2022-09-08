//
//  MarkerView.swift
//  testing
//
//  Created by FAITH CHONG RUI EN stu on 6/9/22.
//

//import Foundation
//import SwiftUI
//import UIKit
//
//class MarkerView: UILabel {
//    var yPCT: CGFloat = 0
//    var xPCT: CGFloat = 0
//}
//
//class ZoomWithMarkersViewController: UIViewController, UIScrollViewDelegate {
//    
////    private var content: Content
////    @State var ZoomImage = ZoomableScrollView
//
////    init(@ViewBuilder content: () -> Content) {
////      self.content = content()
////    }
////
////    required init?(coder: NSCoder) {
////        fatalError("init(coder:) has not been implemented")
////    }
//    
////    let imgView: UIImageView = {
////        let v = UIImageView()
////        v.translatesAutoresizingMaskIntoConstraints = false
////        return v
////    }()
////
////    let scrollView: UIScrollView = {
////        let v = UIScrollView()
////        v.translatesAutoresizingMaskIntoConstraints = false
////        return v
////    }()
//    
//    var points: [CGPoint] = [
//        CGPoint(x:  200, y:  200),
//        CGPoint(x:  800, y:  300),
//        CGPoint(x:  500, y:  700),
//        CGPoint(x: 1100, y:  900),
//        CGPoint(x:  300, y: 1200),
//        CGPoint(x: 1300, y: 1400),
//    ]
//    
//    var markers: [MarkerView] = []
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        // make sure we have an image
//        guard let img = ZoomableScrollView else {
//            fatalError("Could not load image!!!!")
//        }
////
////        // set the image
////        imgView.image = img
////
////        // add the image view to the scroll view
////        scrollView.addSubview(imgView)
////
////        // add scroll view to view
////        view.addSubview(scrollView)
////
////        // respect safe area
////        let safeG = view.safeAreaLayoutGuide
////
////        // to save on typing
////        let contentG = scrollView.contentLayoutGuide
////
////        NSLayoutConstraint.activate([
////
////            // scroll view inset 20-pts on each side
////            scrollView.leadingAnchor.constraint(equalTo: safeG.leadingAnchor, constant: 20.0),
////            scrollView.trailingAnchor.constraint(equalTo: safeG.trailingAnchor, constant: -20.0),
////
////            // square (1:1 ratio)
////            scrollView.heightAnchor.constraint(equalTo: scrollView.widthAnchor),
////
////            // center vertically
////            scrollView.centerYAnchor.constraint(equalTo: safeG.centerYAnchor),
////
////            // constrain all 4 sides of image view to scroll view's Content Layout Guide
////            imgView.topAnchor.constraint(equalTo: contentG.topAnchor),
////            imgView.leadingAnchor.constraint(equalTo: contentG.leadingAnchor),
////            imgView.trailingAnchor.constraint(equalTo: contentG.trailingAnchor),
////            imgView.bottomAnchor.constraint(equalTo: contentG.bottomAnchor),
////
////            // we will want zoom scale of 1 to show the "native size" of the image
////            imgView.widthAnchor.constraint(equalToConstant: img.size.width),
////            imgView.heightAnchor.constraint(equalToConstant: img.size.height),
////
////        ])
//        
//        // create marker views and
//        //  add them as subviews of the scroll view
//        //  add them to our array of marker views
//        var i: Int = 0
//        points.forEach { pt in
//            i += 1
//            let v = MarkerView()
//            v.textAlignment = .center
//            v.font = .systemFont(ofSize: 12.0)
//            v.text = "\(i)"
//            v.backgroundColor = UIColor.green.withAlphaComponent(0.5)
//            ZoomableScrollView<content>.addSubview(v)
//            markers.append(v)
//            v.yPCT = pt.y / img.size.height
//            v.xPCT = pt.x / img.size.width
//            v.frame = CGRect(origin: .zero, size: CGSize(width: 30.0, height: 30.0))
//        }
//        
//        // assign scroll view's delegate
//        ZoomableScrollView.delegate = self
//        
//    }
//    
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//        print(#function)
//        
////        guard let img = imgView.image else { return }
////
////        // max scale is 1.0 (original image size)
////        ZoomableScrollView.maximumZoomScale = 1.0
////
////        // min scale fits the image in the scroll view frame
////        scrollView.minimumZoomScale = scrollView.frame.width / img.size.width
////
////        // start at min scale (so full image is visible)
////        scrollView.zoomScale = scrollView.minimumZoomScale
//        
//        // just to make the markers "appear" nicely
//        markers.forEach { v in
//            v.center = CGPoint(x: ZoomableScrollView.bounds.midX, y: ZoomableScrollView.bounds.midY)
//            v.alpha = 0.0
//        }
//
//    }
//    
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        
//        // animate the markers into position
//        UIView.animate(withDuration: 1.0, animations: {
//            self.markers.forEach { v in
//                v.alpha = 1.0
//            }
//            self.updateMarkers()
//        })
//        
//    }
//
//    func updateMarkers() -> Void {
//        markers.forEach { v in
//            let x = ZoomableScrollView.frame.origin.x + v.xPCT * ZoomableScrollView.frame.width
//            let y = ZoomableScrollView.frame.origin.y + v.yPCT * ZoomableScrollView.frame.height
//            
//            // for example:
//            //  put bottom-left corner of marker at coordinates
//            v.frame.origin = CGPoint(x: x, y: y - v.frame.height)
//            
//            // or
//            //  put center of marker at coordinates
//            //v.center = CGPoint(x: x, y: y)
//        }
//    }
//    
//    func scrollViewDidZoom(_ scrollView: UIScrollView) {
//        updateMarkers()
//    }
//    
////    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
////        return ZoomableScrollView
////    }
//    
//}
