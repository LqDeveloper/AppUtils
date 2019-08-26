//
//  AppBaseTableViewController.swift
//  MarketSmithHk
//
//  Created by Quan Li on 2019/7/11.
//  Copyright © 2019 williamoneilchina. All rights reserved.
//

import UIKit

open class AppBaseTableViewController: UITableViewController {
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        if #available(iOS 11.0, *){
            self.tableView.contentInsetAdjustmentBehavior = .never
        }else{
            self.automaticallyAdjustsScrollViewInsets = false
        }
    }
}

