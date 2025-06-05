//
//  FrameworkGridView.swift
//  AppleFrameworks
//
//  Created by Archita Nemalikanti on 6/5/25.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    let columns: [GridItem] = [GridItem(.flexible ()), GridItem(.flexible ()), GridItem(.flexible ())]
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks){ framework in //"framework in" is the name of the thing we're iterating over. just a name!
                        FrameworkTitleView(f2: framework)
                            .onTapGesture{ //whenever we click this framework
                                viewModel.selectedFramework = framework
                            }
                    }

                }
            }
            .navigationTitle("Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView){
                //basically what we're saying is show this sheet
                //whenever isShowingDetailView CHANGES.
                //so what view do we wanna show?
                //we wanna show Frameworkdetailview
                FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailView) //if viewModel.selectedFramework is NIL, then we pass in MockData.sampleFramework, but i think for the future we should make an "oops we can't open that" type page.
            }
        }

        //Text("Hello world")
    }
}

struct FrameworkTitleView: View {
    let f2: Framework
    //let name: String
    //let imageName: String
    var body: some View {
        
        VStack {

            Image(f2.imageName) //we use systemName just for sf symbols
                .resizable() //always put this for images
                .frame(width: 90, height: 90)  //always make a frame for the image
            Text(f2.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit() //u now have the ability to shrink the text, when name is super long
                .minimumScaleFactor(0.6) //smallest we go with text size is 60% of original text size
            
        }
        .padding()
    }

}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}
