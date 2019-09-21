//
//  DataFlowTest.swift
//  SwiftUITestInBeta7
//
//  Created by xunianqiang on 2019/9/7.
//  Copyright © 2019 bytedance. All rights reserved.
//

import SwiftUI
import Combine

struct DataFlowTest: View {
    @State var number : Int = 0
    @State var userData = UserData()
    var body: some View {
        VStack {
            Text("play number is : \(self.number)")
            Text("user name is : \(self.userData.userName)")
            PlayButton(count: $number, userModel: userData)
            
            VStack {
                Text("a1")
                Text("a2")
                Text("a3")
            }
        }

    }
}

struct PlayButton : View {
    @Binding var count : Int
    @ObservedObject var userModel: UserData
    
    var body: some View {
        Button(action: {
            self.count += 1
            self.userModel.userName = "tom" + String(self.count)
        }) {
            Text("Play")
        }
        .padding(10)
    }
}

struct DataFlowTest_Previews: PreviewProvider {
    static var previews: some View {
        DataFlowTest()
    }
    
    // test get, set struct self
    var _test: Bool
    var test: Bool {
        mutating get {
            return _test
        }
        set {
            _test = newValue
        }
    }
    var testT: Bool
    mutating func testFunc() -> Void {
        self.test = true
        self.testT = true
    }
}
