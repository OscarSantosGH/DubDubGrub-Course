//
//  LocationListView.swift
//  DubDubGrub
//
//  Created by Oscar Santos on 8/21/21.
//

import SwiftUI

struct LocationListView: View {
    var body: some View {
        NavigationView {
            List(0..<11) { _ in
                NavigationLink(destination: LocationDetailView()) {
                    LocationCell()
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
