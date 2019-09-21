//
//  ShowDetailView.swift
//  SwiftUITestInBeta7
//
//  Created by xunianqiang on 2019/9/17.
//  Copyright © 2019 bytedance. All rights reserved.
//

import SwiftUI

struct ShowDetailView: View {
    var body: some View {
        VStack {
            Text("Hello World!")
        }
//        .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height, alignment: .topLeading)
        .background(Color.gray.opacity(0.8))
        // 需要有顺序
    }
}

struct ShowDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ShowDetailView()
    }
}
