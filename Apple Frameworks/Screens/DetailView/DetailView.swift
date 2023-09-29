//
//  DetailView.swift
//  Apple Frameworks
//
//  Created by Wuqiong Fan on 9/26/23.
//

import SwiftUI

struct DetailView: View {
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            Spacer()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button {
                isShowingSafariView = true
            } label: {
                // AFButton(title: "Learn More")
                Label("Learn More", systemImage: "book.fill")
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
            .buttonBorderShape(.capsule)
            .tint(.red)
            //.sheet or .fullScreenCover for style
            .fullScreenCover(isPresented: $isShowingSafariView) {
                if let validURL = URL(string: framework.urlString) {
                    SafariView(url: validURL)
                } else {
                    SafariView(url: URL(string: "https://www.apple.com")!)
                }
            }


        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(framework: MockData.sampleFramework,
                   isShowingDetailView: .constant(false))
    }
}
