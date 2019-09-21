//
//  DataFlowModelTest2.swift
//  SwiftUITestInBeta7
//
//  Created by xunianqiang on 2019/9/8.
//  Copyright © 2019 bytedance. All rights reserved.
//

import SwiftUI

struct DataFlowModelTest2: View {
    @EnvironmentObject var userModel : UserData
    var body: some View {
        VStack {
            Text("change name :\(userModel.userName)")
            Button(action: {
                self.userModel.userName = "tom2"
            }) {
                Text("change name")
            }
        }
    }
}

struct DataFlowModelTest2_Previews: PreviewProvider {
    static var previews: some View {
        DataFlowModelTest2()
    }
}
