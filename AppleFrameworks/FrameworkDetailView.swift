//
//  FrameworkDetailView.swift
//  AppleFrameworks
//
//  Created by Archita Nemalikanti on 6/5/25.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    
    var body: some View {
        VStack {
            Button {
                
            } label : {
                Image(systemName: "xmark")
                    .foregroundColor(.blue)
            }
            Spacer()
            FrameworkTitleView(f2: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            Button {
                
            } label : {
                Text("Learn More!")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .frame(width: 280, height: 50) //make sure to put frame before background and foreground color
                    .background(Color.red)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
            }
            
        }
    }
}

#Preview {
    FrameworkDetailView(framework: Framework(name: "ARKit",
                                             imageName: "arkit",
                                             urlString: "https://developer.apple.com/augmented-reality/arkit",
                                             description: "ARKit 4 introduces a brand-new Depth API, creating a new way to access the detailed depth information gathered by the LiDAR Scanner on iPhone 12 Pro, iPhone 12 Pro Max, and iPad Pro.\n\nLocation Anchors leverages the higher-resolution data in Apple Maps to place AR experiences at a specific point in the world in your iPhone and iPad apps. And support for face tracking extends to all devices with the Apple Neural Engine and a front-facing camera, so even more users can experience the joy of AR in photos and videos."))
}
