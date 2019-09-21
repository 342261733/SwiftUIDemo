//
//  ContentView.swift
//  SwiftUITestInBeta7
//
//  Created by xunianqiang on 2019/9/7.
//  Copyright © 2019 bytedance. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let userModel = UserData()
    var body: some View {
        NavigationView {
            List {
                Section() {
                    NavigationLink(destination: ViewsTest()) {
                          Text("View test")
                    }
                    NavigationLink(destination: StackTest()) {
                         Text("UI Stack")
                    }
                    NavigationLink(destination: FormTest()) {
                         Text("Form test")
                    }
                    NavigationLink(destination: WebViewTest()) {
                        Text("WebView")
                    }
                    NavigationLink(destination: UIKitVCRepresentable()) {
                        Text("Open UIKitVC")
                    }
                    NavigationLink(destination: DataFlowTest()) {
                        Text("DataFlow")
                    }
                    NavigationLink(destination: DataFlowModelTest().environmentObject(userModel)) {
                        Text("DataFlow model")
                    }
                    NavigationLink(destination: DataFlowModelTest2().environmentObject(userModel)) {
                        Text("DataFlow model 2")
                    }
                    NavigationLink(destination: AnimationTest().environmentObject(userModel)) {
                        Text("AnimationTest")
                    }
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
