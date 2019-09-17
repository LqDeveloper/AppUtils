//
//  AppBaseTabBarController.swift
//  MarketSmithHk
//
//  Created by Quan Li on 2019/7/11.
//  Copyright © 2019 lq. All rights reserved.
//

import UIKit

open class AppBaseTabBarController: UITabBarController {
    
    override open func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override open var shouldAutorotate: Bool{
        return selectedViewController?.shouldAutorotate ?? false
    }
    
    override open var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation{
        return selectedViewController?.preferredInterfaceOrientationForPresentation ?? .portrait
    }
    
    override open var supportedInterfaceOrientations: UIInterfaceOrientationMask{
        return selectedViewController?.supportedInterfaceOrientations ?? UIInterfaceOrientationMask.portrait
    }
    
    override open var prefersStatusBarHidden: Bool{
        return selectedViewController?.prefersStatusBarHidden ?? false
    }
    
    override open var preferredStatusBarStyle: UIStatusBarStyle{
        return selectedViewController?.preferredStatusBarStyle ?? .lightContent
    }
    
}
