//
//  TestViewCell.swift
//  Stroyka
//
//  Created by Ilya Vinogradov on 10/31/17.
//  Copyright © 2017 Ilya Vinogradov. All rights reserved.
//

import Foundation
import UIKit

extension UITableViewCell {

    class func createCellFromNib(nibName : NSString) -> UITableViewCell
    {
        let vc = UIViewController.init(nibName: nibName as String, bundle: Bundle.main).view as! UITableViewCell
        vc.selectionStyle = .none

        return vc
    }
}

class TestViewCell : UITableViewCell
{
    
    var categoryId : Int?
    var haveDetails : Bool = false
    
    class func createCell(some parameters) -> TestViewCell
    {
        let cell = TestViewCell.createCellFromNib(nibName: "TestViewCell") as! TestViewCell
        
        return cell
    }
}
