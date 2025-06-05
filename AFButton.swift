//
//  AFButton.swift
//  AppleFrameworks
//
//  Created by Archita Nemalikanti on 6/5/25.
//

import SwiftUI

struct AFButton: View {
    var title: String
    var body: some View {
        Text(title)
            .padding()
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50) //make sure to put frame before background and foreground color
            .background(Color.red)
            .foregroundColor(Color.white)
            .cornerRadius(10)
            
    }
}

#Preview {
    AFButton(title: "Test Title")
}
