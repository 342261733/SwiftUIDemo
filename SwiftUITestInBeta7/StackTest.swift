//
//  StackTest.swift
//  SwiftUITestInBeta7
//
//  Created by xunianqiang on 2019/9/9.
//  Copyright © 2019 bytedance. All rights reserved.
//

import SwiftUI

struct StackTest: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("a")
            Text("b")
            HStack(alignment: .top, spacing: 20) {
                Text("c")
                Text("d")
            }
            
            // 解决之前label，image，button等实际展示内容底部不对齐问题
            HStack(alignment: .lastTextBaseline, spacing: 100) {
                Text("Hello World!KKKKKKKKKKKK").layoutPriority(100)
                Text("哈哈哈").layoutPriority(20).alignmentGuide(.lastTextBaseline) { d in
                    d[.bottom] * 0.5
                }
                Text("23sd").layoutPriority(10)
            }
        }
    }
}

struct StackTest_Previews: PreviewProvider {
    static var previews: some View {
        StackTest()
    }
}
