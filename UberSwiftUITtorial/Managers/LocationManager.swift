//
//  LocationManager.swift
//  UberSwiftUITtorial
//
//  Created by kittawat phuangsombat on 2022/9/24.
//

//get user location

import CoreLocation

class LocationManager: NSObject, ObservableObject {
    private let locationManager = CLLocationManager()
    static let shared = LocationManager()
    @Published var userLocation: CLLocationCoordinate2D?
    
    override init() {
        super.init()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
    }
}

extension LocationManager: CLLocationManagerDelegate {
    
    //update user location
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        //test to check if have location(location is not empty), if not empty stop updating the location
//        guard !locations.isEmpty else { return }
//        locationManager.stopUpdatingLocation()
        
        guard let location = locations.first else { return }
        self.userLocation = location.coordinate
        locationManager.startUpdatingLocation()
        
    }
}
