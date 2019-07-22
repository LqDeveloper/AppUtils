//
//  AppBaseViewController.swift
//  MarketSmithHk
//
//  Created by Quan Li on 2019/7/11.
//  Copyright © 2019 williamoneilchina. All rights reserved.
//

import UIKit

open class AppBaseViewController: UIViewController {
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
    }
    
    open var isHiddenNavigationBar:Bool{
        set{
            navigationController?.navigationBar.isHidden = newValue
        }
        get{
            return navigationController?.navigationBar.isHidden ?? false
        }
    }
    
}

