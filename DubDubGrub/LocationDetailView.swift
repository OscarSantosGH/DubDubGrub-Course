//
//  LocationDetailView.swift
//  DubDubGrub
//
//  Created by Oscar Santos on 8/23/21.
//

import SwiftUI

struct LocationDetailView: View {
    
    let columns = [GridItem(.flexible()),
                   GridItem(.flexible()),
                   GridItem(.flexible())]
    
    var body: some View {
        VStack(spacing: 16){
            Image("default-banner-asset")
                .resizable()
                .scaledToFill()
                .frame(height: 120)
            
            HStack {
                Label("123 Main Street", systemImage: "mappin.and.ellipse")
                    .font(.caption)
                    .foregroundColor(.secondary)
                
                Spacer()
            }
            .padding(.horizontal)
            
            Text("This is a test description of the spot. This is a test description of the spot. This is a test description of the spot.")
                .lineLimit(3)
                .minimumScaleFactor(0.75)
                .padding(.horizontal)
            
            ZStack{
                Capsule()
                    .frame(height: 80)
                    .foregroundColor(Color(.secondarySystemBackground))
                
                HStack(spacing: 20) {
                    Button {
                        
                    } label: {
                        LocationActionButton(color: .brandPrimary, imageName: "location.fill")
                    }
                    
                    Link(destination: URL(string: "https://www.apple.com")!, label: {
                        LocationActionButton(color: .brandPrimary, imageName: "network")
                    })
                    
                    Button {
                        
                    } label: {
                        LocationActionButton(color: .brandPrimary, imageName: "phone.fill")
                    }
                    
                    Button {
                        
                    } label: {
                        LocationActionButton(color: .brandPrimary, imageName: "person.fill.checkmark")
                    }
                }
            }
            .padding(.horizontal)
            
            Text("Who's Here?")
                .bold()
                .font(.title2)
            
            LazyVGrid(columns: columns, content: {
                FirstNameAvatarView(firstName: "Sean")
                FirstNameAvatarView(firstName: "Oscar")
                FirstNameAvatarView(firstName: "Paul")
                FirstNameAvatarView(firstName: "Carlos")
                FirstNameAvatarView(firstName: "Diomedes")
                FirstNameAvatarView(firstName: "Marko")
                FirstNameAvatarView(firstName: "Mia")
                FirstNameAvatarView(firstName: "Aurora")
            })
            
            Spacer()
        }
        .navigationTitle(Text("Location Name"))
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LocationDetailView()
        }
    }
}

struct LocationActionButton: View {
    
    var color: Color
    var imageName: String
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(color)
                .frame(width: 60, height: 60)
            
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 22, height: 22)
                .foregroundColor(.white)
        }
    }
}

struct FirstNameAvatarView: View {
    
    var firstName: String
    
    var body: some View {
        VStack{
            AvatarView(size: 64)
            
            Text(firstName)
                .bold()
                .minimumScaleFactor(0.75)
        }
    }
}
