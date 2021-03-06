//
//  LocationListView.swift
//  DubDubGrub
//
//  Created by Oscar Santos on 8/21/21.
//

import SwiftUI

struct LocationListView: View {
    
    @State private var locations: [DDGLocation] = [DDGLocation(record: MockData.location)]
    
    var body: some View {
        NavigationView {
            List(locations, id: \.ckRecordID) { location in
                NavigationLink(destination: LocationDetailView(location: location)) {
                    LocationCell(location: location)
                }
            }
            .navigationTitle("Grub Spots")
        }
    }
}

struct LocationListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationListView()
    }
}
