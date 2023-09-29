//
//  FrameworkGridView.swift
//  Apple Frameworks
//
//  Created by Wuqiong Fan on 9/26/23.
//

import SwiftUI

struct FrameworkGridView: View {
    
    //StateObject vs ObserveObject: initialize vs injection
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        NavigationLink(value: framework){
                            FrameworkTitleView(framework: framework)
                        }
                    }
                }
                .navigationTitle("Apple Frameworks")
                .navigationDestination(for: Framework.self) { framework in
                    DetailView(framework: framework)
                }
            }
        }
        .accentColor(.primary)
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}


