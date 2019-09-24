//
//  AppBaseNavigationController.swift
//  MarketSmithHk
//
//  Created by Quan Li on 2019/7/11.
//  Copyright © 2019 lq. All rights reserved.
//

import UIKit

open class AppBaseNavigationController: UINavigationController {
    
    override open func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override open var shouldAutorotate: Bool{
        return topViewController?.shouldAutorotate ?? false
    }
    
    override open var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation{
        return topViewController?.preferredInterfaceOrientationForPresentation ?? .portrait
    }
    
    override open var supportedInterfaceOrientations: UIInterfaceOrientationMask{
        return topViewController?.supportedInterfaceOrientations ?? UIInterfaceOrientationMask.portrait
    }
    
    override open var prefersStatusBarHidden: Bool{
        return topViewController?.prefersStatusBarHidden ?? false
    }
    
    override open var preferredStatusBarStyle: UIStatusBarStyle{
        return topViewController?.preferredStatusBarStyle ?? .lightContent
    }
    
}
