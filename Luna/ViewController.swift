//
//  ViewController.swift
//  Luna
//
//  Created by Rimil Dey on 04/04/18.
//  Copyright © 2018 Rimil Dey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    lazy var dataSource: PhasesDataSource = {
        return PhasesDataSource()
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // connect data source with table view
        self.dataSource.tableView = self.tableView
    }

}
