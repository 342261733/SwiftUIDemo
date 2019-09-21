//
//  ViewsTest.swift
//  SwiftUITestInBeta7
//
//  Created by xunianqiang on 2019/9/19.
//  Copyright © 2019 bytedance. All rights reserved.
//

import SwiftUI

struct ViewsTest: View {
    var body: some View {
        VStack {
            Text("Label")
                .foregroundColor(Color.orange)
                .font(Font.system(size: 17))
            Button(action: {
                print("click")
            }) {
                Text("Button")
            }
            Image("image_write")
                .onTapGesture {
                    print("image click")
            }
        }
    }
}

struct ViewsTest_Previews: PreviewProvider {
    static var previews: some View {
        ViewsTest()
    }
}
