//
//  AppNetworkViewController.swift
//  AppUtils
//
//  Created by Quan Li on 2019/9/20.
//  Copyright © 2019 williamoneilchina. All rights reserved.
//

import UIKit



open class AppNetworkViewController:AppBaseTableViewController{
    var cellTitles:[String]
    public var currentIndex = 0
    var saveBlock:(()->Void)
    var selectItemBlock:((Int)->Void)
    
    private var saveTitle:String
    private var backTitle:String
    private var selectTitle:String
    
    public init(cellTitles:[String],title:String = "网络环境管理",saveTitle:String = "保存",backTitle:String = "返回",selectTitle:String = "选中",save:@escaping (()->Void),select:@escaping (Int)->Void) {
        self.cellTitles = cellTitles
        self.saveTitle = saveTitle
        self.backTitle = backTitle
        self.selectTitle = selectTitle
        saveBlock = save
        selectItemBlock = select
        super.init(style: .grouped)
        self.title = title
        tableView.rowHeight = 60
        tableView.estimatedRowHeight = 0
        tableView.estimatedSectionHeaderHeight = 0
        tableView.estimatedSectionFooterHeight = 0
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open override func viewDidLoad() {
        navigationItem.leftBarButtonItem = UIBarButtonItem.init(title: backTitle, style: .plain, target: self, action: #selector(clickBack))
        navigationItem.rightBarButtonItem = UIBarButtonItem.init(title: saveTitle, style: .plain, target: self, action: #selector(clickSave))
        
    }
    
    open override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    @objc func clickBack(){
        navigationController?.popViewController(animated: true)
    }
    
    @objc func clickSave(){
        saveBlock()
    }
}


extension AppNetworkViewController{
    open override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 1
    }
    
    open override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellTitles.count
    }
    
    open override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var  cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell")
        if (cell == nil) {
            cell = UITableViewCell.init(style: .value1, reuseIdentifier: "UITableViewCell")
        }
        cell?.textLabel?.text = cellTitles[indexPath.row]
        if currentIndex == indexPath.row{
            cell?.detailTextLabel?.text = selectTitle
        }else{
            cell?.detailTextLabel?.text = ""
        }
        cell?.selectionStyle = .none
        return cell!
    }
    
    open override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard currentIndex != indexPath.row else{
            return
        }
        currentIndex = indexPath.row
        tableView.reloadData()
        selectItemBlock(indexPath.row)
    }
}
