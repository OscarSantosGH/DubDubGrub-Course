//
//  OnboardView.swift
//  DubDubGrub
//
//  Created by Oscar Santos on 10/8/22.
//

import SwiftUI

struct OnboardView: View {
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button{
                    
                } label: {
                    XDismissButton()
                }
            }
            
            Spacer()
            
            LogoView(frameWidth: 250)
                .padding(.bottom)
            
            VStack(alignment: .leading, spacing: 32){
                OnboardingInfoView(imageName: "building.2.crop.circle",
                                   title: "Restaurant Locations",
                                   description: "Find places ti dine around the convention center")
                OnboardingInfoView(imageName: "checkmark.circle",
                                   title: "Check In",
                                   description: "Let other iOS Devs know where you are")
                OnboardingInfoView(imageName: "building.2.crop.circle",
                                   title: "Find Friends",
                                   description: "See where other iOS Devs are and join the party")
            }
            .padding(.horizontal, 40)
            
            Spacer()
        }
    }
}

struct OnboardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardView()
    }
}

struct OnboardingInfoView: View {
    
    var imageName: String
    var title: String
    var description: String
    
    var body: some View {
        HStack(spacing: 26){
            Image(systemName: imageName)
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(.brandPrimary)
            VStack(alignment: .leading, spacing: 4){
                Text(title).bold()
                Text(description)
                    .foregroundColor(.secondary)
                    .lineLimit(2)
                    .minimumScaleFactor(0.75)
            }
        }
    }
}
