//
//  LocationCell.swift
//  DubDubGrub
//
//  Created by Oscar Santos on 8/25/21.
//

import SwiftUI

struct LocationCell: View {
    
    var location: DDGLocation
    
    var body: some View {
        HStack {
            Image("default-square-asset")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
                .padding(.vertical, 8)
            
            VStack(alignment: .leading){
                Text(location.name)
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

struct LocationCell_Previews: PreviewProvider {
    static var previews: some View {
        LocationCell(location: DDGLocation(record: MockData.location))
    }
}
