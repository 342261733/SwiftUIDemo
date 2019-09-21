//
//  DataFlowModelTest.swift
//  SwiftUITestInBeta7
//
//  Created by xunianqiang on 2019/9/7.
//  Copyright © 2019 bytedance. All rights reserved.
//

import SwiftUI

struct DataFlowModelTest: View {
    @EnvironmentObject var userModel : UserData
    var body: some View {
        VStack {
            Text("change name :\(userModel.userName)")
            Button(action: {
                self.userModel.userName = "tom"
            }) {
                Text("change name")
            }
        }
    }
}

struct DataFlowModelTest_Previews: PreviewProvider {
    static var previews: some View {
        DataFlowModelTest()
    }
}
