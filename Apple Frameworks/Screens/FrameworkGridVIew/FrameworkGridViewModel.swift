//
//  FrameworkGridViewModel.swift
//  Apple Frameworks
//
//  Created by Wuqiong Fan on 9/26/23.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    //fill screen based on number of columns
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
