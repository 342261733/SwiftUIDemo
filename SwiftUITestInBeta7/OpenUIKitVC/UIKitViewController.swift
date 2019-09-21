//
//  UIKitViewController.swift
//  SwiftUITest
//
//  Created by semyon on 2019/8/18.
//  Copyright © 2019 com.semyon. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI


@objc protocol UIKitViewControllerDelegate {
    func vcCallBack() -> Void 
    @objc optional func vcOptionalCallBack()
}


class UIKitViewController: UIViewController {
    
    var dataSource: UIKitViewControllerDelegate? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(button)
        view.backgroundColor = UIColor.lightGray
        button.frame = CGRect(x:100, y:84, width:150, height:50)
        
        let button2 = UIButton(type: .system)
        button2.setTitle("delegate click", for:.normal)
        button2.addTarget(self, action: #selector(buttonClick2), for: .touchUpInside)
        button2.frame = CGRect(x:100, y:184, width:150, height:50)
        view.addSubview(button2)
    }
    
    lazy var button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Open swiftUI view", for:.normal)
        button.addTarget(self, action: #selector(buttonClick), for: .touchUpInside)
        return button
    }()
    
    @objc func buttonClick(_ button: UIButton) -> Void {
        let swiftuiVc = UIHostingController(rootView: ContentView())
        swiftuiVc.modalPresentationStyle = .automatic// .fullScreen
        let newNav = UINavigationController(rootViewController: swiftuiVc)
        self.present(newNav, animated: true) {
        }
    }
    
    @objc func buttonClick2(_ button: UIButton) -> Void {
        self.dataSource?.vcCallBack()
        self.dataSource?.vcOptionalCallBack?()
    }
//    @objc func openContentView() {
//        let hostVC = UIHostingController(rootView: ContentView())
//        present(hostVC, animated: true, completion: nil)
//    }
    
}
