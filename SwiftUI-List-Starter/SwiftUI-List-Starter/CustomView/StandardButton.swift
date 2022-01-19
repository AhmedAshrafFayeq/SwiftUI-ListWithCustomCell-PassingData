//
//  StandardButton.swift
//  SwiftUI-List-Starter
//
//  Created by Ahmed Fayeq on 19/01/2022.
//

import SwiftUI

struct StandardButton: View {
    var title: String
    var body: some View {
        Text(title)
            .bold()
            .font(.title2)
            .frame(width: 280, height: 50)
            .background(Color(.systemRed))
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}
