//
//  UIKitVCRepresentable.swift
//  SwiftUITest
//
//  Created by semyon on 2019/9/1.
//  Copyright © 2019 com.semyon. All rights reserved.
//

import SwiftUI
import Foundation
import UIKit

struct UIKitVCRepresentable : UIViewControllerRepresentable {
    func makeUIViewController(context: UIViewControllerRepresentableContext<UIKitVCRepresentable>) -> UIViewController {
        let vc = UIKitViewController()
        vc.dataSource = context.coordinator as UIKitViewControllerDelegate
        return vc
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<UIKitVCRepresentable>) {
        print("semyon: update vc")
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, UIKitViewControllerDelegate {
        var parent: UIKitVCRepresentable

        init(_ pageViewController: UIKitVCRepresentable) {
            self.parent = pageViewController
        }
        
        func vcCallBack() {
            print("vcCallBack")
        }
        
        func vcOptionalCallBack() {
            print("vcOptionalCallBack")
        }
    }
}
