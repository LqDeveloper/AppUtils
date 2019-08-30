//
//  AppBaseViewController.swift
//  MarketSmithHk
//
//  Created by Quan Li on 2019/7/11.
//  Copyright © 2019 williamoneilchina. All rights reserved.
//

import UIKit

open class AppBaseViewController: UIViewController {
    public var isHiddenNavigationBar:Bool{
        set{
            navigationController?.setNavigationBarHidden(newValue, animated: true)
        }
        get{
            return navigationController?.navigationBar.isHidden ?? false
        }
    }
    override open func viewDidLoad() {
        super.viewDidLoad()
    }
}

