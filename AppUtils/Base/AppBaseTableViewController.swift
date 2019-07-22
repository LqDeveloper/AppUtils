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
    
    open var isHiddenNavigationBar:Bool{
        set{
            navigationController?.navigationBar.isHidden = newValue
        }
        get{
            return navigationController?.navigationBar.isHidden ?? false
        }
    }
    
    
    override open func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    override open func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 1
    }
    
    override open func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 1
    }
    
    override open var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
}

