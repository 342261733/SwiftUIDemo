//
//  UserData.swift
//  SwiftUITestInBeta7
//
//  Created by xunianqiang on 2019/9/7.
//  Copyright © 2019 bytedance. All rights reserved.
//

import SwiftUI
import Combine

class UserData: ObservableObject {
    let objectWillChange = PassthroughSubject<Void, Never>() // 注意：变量名必须是这个
    var userName = "hi" {
        willSet {
            objectWillChange.send()
        }
    }
}
