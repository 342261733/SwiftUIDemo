//
//  FormTest.swift
//  SwiftUITestInBeta7
//
//  Created by xunianqiang on 2019/9/15.
//  Copyright © 2019 bytedance. All rights reserved.
//

import SwiftUI

struct FormTest: View {
    var body: some View {
        Form {
            Text("Hello World!")
            Spacer() // 空格
            Divider() // 分割线
            Text("Hahaha")
        }
        
    }
}

struct FormTest_Previews: PreviewProvider {
    static var previews: some View {
        FormTest()
    }
}
