//
//  SelfGeneratedTableView.swift
//  Stroyka
//
//  Created by Ilya Vinogradov on 10/9/17.
//  Copyright © 2017 Ilya Vinogradov. All rights reserved.
//

import UIKit
import Foundation

let SGTKeyCells = "cells"
let SGTKeySectionName = "sectionName"
let SGTKeySectionFooter = "sectionFooter"

class SelfGeneratedTableView: UITableView, UITableViewDataSource
{
    var source : Array<[String:Any]>?
    
    init() {
        super.init(frame: .zero, style: .plain)
        self.dataSource = self;
        self.sectionHeaderHeight = 38
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.dataSource = self;
        self.sectionHeaderHeight = 38
    }
    
    init(frame: CGRect) {
        super.init(frame: frame, style: .plain)
        self.dataSource = self;
        self.sectionHeaderHeight = 38
    }
    
    override init(frame: CGRect, style: UITableViewStyle) {
        super.init(frame: frame, style: style)
        self.dataSource = self;
        self.sectionHeaderHeight = 38
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        if let s = source {
            return s.count
        } else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let countRows = (self.source?[section][SGTKeyCells] as? Array<Any>)?.count else
        {
            return 0
        }
        return countRows;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let row = (self.source?[indexPath.section][SGTKeyCells] as? Array<Any>)?[indexPath.row] else
        {
            print("cellForRowAtIndexPath empty cell")
            return UITableViewCell()
        }
        if (row is String) {
            let cell = self.dequeueReusableCell(withIdentifier: row as! String)
            return cell!
        }
        
        return row as! UITableViewCell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        guard let header = self.source?[section][SGTKeySectionName] as? String else
        {
            return ""
        }
        
        return header
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        guard let footer = self.source?[section][SGTKeySectionFooter] as? String else
        {
            return ""
        }
        
        return footer
    }
}
