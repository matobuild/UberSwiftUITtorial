//
//  LocationSearchViewModel.swift
//  UberSwiftUITtorial
//
//  Created by kittawat phuangsombat on 2022/9/26.
//

import Foundation
import MapKit

class LocationSearchViewModel: NSObject, ObservableObject {
    
    // MARK: - Properties
    
    @Published var results = [MKLocalSearchCompletion]()
    @Published var selectedLocation: String?
    
    private let searchCompleter = MKLocalSearchCompleter()
    var queryFragment: String = "" {
        didSet {
            searchCompleter.queryFragment = queryFragment
        }
    }
    
    // MARK: Lifecycle
    
    override init() {
        super.init()
        searchCompleter.delegate = self
        searchCompleter.queryFragment = queryFragment
    }
    
    //MARK: - Helpers
    
    func selectedLocation(_ location: String) {
        self.selectedLocation = location
        print("DEBUG: Selected location is \(self.selectedLocation)")
    }
    
}

    //MARK: -MKLocalSearchComepleterDelegate
extension LocationSearchViewModel: MKLocalSearchCompleterDelegate {
    func completerDidUpdateResults(_ completer: MKLocalSearchCompleter) {
        self.results = completer.results
    }
}


