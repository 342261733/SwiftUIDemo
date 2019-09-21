//
//  AnimationTest.swift
//  SwiftUITestInBeta7
//
//  Created by xunianqiang on 2019/9/15.
//  Copyright © 2019 bytedance. All rights reserved.
//

import SwiftUI

struct AnimationTest: View {
    @State var showDetail = false
    @State var bgColor = Color.green
    var body: some View {
        VStack {
            Text("what")
            .frame(width: 100, height: 100)
            .rotationEffect(.degrees(showDetail ? 90 : 0))
//            .animation(.easeInOut(duration: 1))
        
    Button(action: {
        withAnimation(.easeIn(duration: 3)) {
            self.showDetail.toggle()
        }
        
        print("show detail change \(self.showDetail)")
    }) {
        Image("image_write")
            .imageScale(.large)
            .rotationEffect(.degrees(showDetail ? 90 : 0))
            .animation(.linear(duration: 2))
            .animation(nil)
            .scaleEffect(showDetail ? 3 : 1)
            .padding()
            .animation(.linear(duration: 2))
        
    }
            
            Button(action: {
                withAnimation(.easeInOut(duration: 2)) {
                    self.bgColor = Color.orange
                }
            }) {
                Text("change color")
                .background(bgColor)
            }
            
            
            if self.showDetail {
                ShowDetailView()
                    .transition(.customTransition)
            }
        }
    }
}

extension AnyTransition {
    static var customTransition: AnyTransition {
        let insertion = AnyTransition.move(edge: .trailing)
            .combined(with: .opacity)
        let removal = AnyTransition.scale
            .combined(with: .opacity)
        return .asymmetric(insertion: insertion, removal: removal) // insertion：入场动画，removal:出场动画
    }
}

struct AnimationTest_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTest()
    }
}
