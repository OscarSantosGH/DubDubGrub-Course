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

struct AvatarView: View {
    
    var size: CGFloat
    
    var body: some View {
        Image("default-avatar")
            .resizable()
            .scaledToFit()
            .frame(width: size, height: size)
            .clipShape(Circle())
    }
}

struct LocationCell: View {
    var body: some View {
        HStack {
            Image("default-square-asset")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
                .padding(.vertical, 8)
            
            VStack(alignment: .leading){
                Text("The Name Of The Place")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .lineLimit(1)
                    .minimumScaleFactor(0.75)
                
                HStack(){
                    AvatarView(size: 34)
                    AvatarView(size: 34)
                    AvatarView(size: 34)
                    AvatarView(size: 34)
                }
            }
            .padding(.leading)
        }
    }
}
