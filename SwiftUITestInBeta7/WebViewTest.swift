//
//  WebViewTest.swift
//  SwiftUITest
//
//  Created by semyon on 2019/8/11.
//  Copyright © 2019 com.semyon. All rights reserved.
//

import SwiftUI
import WebKit

struct WebViewTest : UIViewRepresentable {
    typealias UIViewType = WKWebView
    
    func makeUIView(context: UIViewRepresentableContext<WebViewTest>) -> WebViewTest.UIViewType {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WebViewTest.UIViewType, context: UIViewRepresentableContext<WebViewTest>) {
        let req = URLRequest(url: URL(string: "https://www.apple.com")!)
        uiView.load(req)
        print("update")
    }
    
    func makeCoordinator() -> () {
        print("what?")
    }
}

struct WebViewTest_Previews : PreviewProvider {
    static var previews: some View {
        WebViewTest()
    }
}
