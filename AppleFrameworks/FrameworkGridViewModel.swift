//
//  FrameworkGridViewModel.swift
//  AppleFrameworks
//
//  Created by Archita Nemalikanti on 6/5/25.
//
import SwiftUI
 
final class FrameworkGridViewModel: ObservableObject { //observable object basically means that if this state changes then the UI should change. you wanna broadcast those changes.
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        } //so anytime selectedFramework changes, we set isShowingDetailView = true.
    }
    @Published var isShowingDetailView = false //whenever it shows change in this variable, it's gonna publish this change.
    //whenever isShowingDetailView shows true, thats when we show our detailView. so our Frameworkgridview is listening for this variable and waiting. this publishes
}
