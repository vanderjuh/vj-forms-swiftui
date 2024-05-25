//
//  Location.swift
//  vj-forms
//
//  Created by Vanderley Junior on 25/05/24.
//

import Foundation
import MapKit

struct Location: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}
