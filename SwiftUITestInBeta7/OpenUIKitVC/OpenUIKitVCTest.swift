//
//  OpenUIKitVCTest.swift
//  SwiftUITest
//
//  Created by semyon on 2019/9/1.
//  Copyright © 2019 com.semyon. All rights reserved.
//

import SwiftUI

struct OpenUIKitVCTest : View {
    var body: some View {
//        ControllerPage<UIKitViewController>()
        UIKitVCRepresentable()
    }
}

#if DEBUG
struct OpenUIKitVCTest_Previews : PreviewProvider {
    static var previews: some View {
        OpenUIKitVCTest()
    }
}
#endif
