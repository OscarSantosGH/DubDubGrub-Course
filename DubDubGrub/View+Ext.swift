//
//  View+Ext.swift
//  DubDubGrub
//
//  Created by Oscar Santos on 8/25/21.
//

import SwiftUI

extension View {
    func profileNameStyle() -> some View {
        self.modifier(ProfileNameText())
    }
}
