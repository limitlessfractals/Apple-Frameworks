//
//  DetailView.swift
//  Apple Frameworks
//
//  Created by Wuqiong Fan on 9/26/23.
//

import SwiftUI

struct DetailView: View {
    var framework: Framework
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color.primary)
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            .padding()
            
            
            Spacer()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button {
                
            } label: {
                AFButton(title: "Learn More")
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(framework: MockData.sampleFramework)
    }
}
