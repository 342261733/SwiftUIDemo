//
//  GraphCapsule.swift
//  SwiftUITestInBeta7
//
//  Created by xunianqiang on 2019/9/17.
//  Copyright © 2019 bytedance. All rights reserved.
//

import SwiftUI

typealias Length = CGFloat

struct GraphCapsule: View {
//    var index: Int
//    var height: Length
//    var range: Range<Double>
//    var overallRange: Range<Double>
//
////    var heightRatio: Length {
//////        max(Length(magnitude(of: range) / magnitude(of: overallRange)), 0.15)
////    }
////
////    var offsetRatio: Length {
//////        Length((range.lowerBound - overallRange.lowerBound) / magnitude(of: overallRange))
////    }
//
//    var animation: Animation {
//        Animation.default
//    }


    var body: some View {
        Capsule()
            .fill(Color.gray)
//            .frame(height: height * heightRatio, alignment: .bottom)
//            .offset(x: 0, y: height * -offsetRatio)
//            .animation(animation)
    }
}

struct GraphCapsule_Previews: PreviewProvider {
    static var previews: some View {
        GraphCapsule()
    }
}
