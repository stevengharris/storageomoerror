//
//  ViewController.swift
//  StorageOmoError
//
//  Created by Steven G. Harris on 9/27/15.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Put your Google iOS API key below
        GMSServices.provideAPIKey("YOUR GOOGLE IOS API KEY HERE")
        let target = CLLocationCoordinate2D(latitude: 37.4869915, longitude: -122.2296488)
        let camera = GMSCameraPosition(target: target, zoom: 15, bearing: 0, viewingAngle: 0)
        view = GMSMapView.mapWithFrame(CGRectZero, camera: camera)
    }

}

