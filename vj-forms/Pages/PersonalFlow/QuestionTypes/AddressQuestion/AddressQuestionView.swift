//
//  AddressQuestionView.swift
//  vj-forms
//
//  Created by Vanderley Junior on 25/05/24.
//

import SwiftUI
import MapKit

struct AddressQuestionView: View {
    
    var description: String;
    
    @State var line1: String = ""
    @State var zipCode: String = ""
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194),
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )
    
    var body: some View {
        VStack(spacing: .zero) {
            Map(coordinateRegion: $region)
                .edgesIgnoringSafeArea(.all)
                .frame(height: 200)
            PageHeader(title: description, icon: .mapIcon, titleSmallFont: true)
            VStack{
                VjTextField(label: "Street Address", text: $line1)
                VjTextField(label: "Zip code", text: $zipCode)
                    .keyboardType(.numberPad)
                Spacer()
            }
            .padding(8)
        }
    }
}

#Preview {
    AddressQuestionView(description: "Inform the street address and Zip code associated to your home location.")
}
