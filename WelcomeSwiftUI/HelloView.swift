//
//  HelloView.swift
//  WelcomeSwiftUI
//
//  Created by YEN-JU HUANG on 2024/8/29.
//

import SwiftUI

struct HelloView: View {
    var body: some View {
        ZStack {
            Color.blue.opacity(0.6)
                .ignoresSafeArea()
            Text("Hello, Objective-C")
                .font(.title)
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    HelloView()
}
