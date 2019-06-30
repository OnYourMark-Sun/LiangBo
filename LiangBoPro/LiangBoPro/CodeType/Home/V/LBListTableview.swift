//
//  LBListTableview.swift
//  LiangBoPro
//
//  Created by xujiahui on 2019/6/30.
//  Copyright © 2019 xujiahui. All rights reserved.
//

import UIKit

class LBListTableview: UITableView,UITableViewDelegate,UITableViewDataSource {
 

    var dataArray: Array<String> = []
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        
        self.delegate = self
        self.dataSource = self
        
        self.register(UINib.init(nibName: "LBListTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        
    }
    
  @objc  func upDataWithListArray(list: Array<String>) {
        
        dataArray = list
        self.reloadData()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if dataArray.count < 1
         {
            return 0
        }
        
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let nameCell: LBListTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! LBListTableViewCell
        
        nameCell.nameLabel.text = dataArray[indexPath.row] as! String
        
        return nameCell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
