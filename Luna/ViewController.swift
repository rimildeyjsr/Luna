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
    
    
    private lazy var dataSource: PhasesDataSource = {
        return PhasesDataSource()
    }()
    
    private lazy var headerView: View = {
        let nib = Bundle.main.loadNibNamed("View", owner: self, options: nil)
        guard let headerView = nib?.first as? View else {
            fatalError("Could not load LunarHeaderView from nib")
        }
        
        return headerView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // connect data source with table view
        self.dataSource.tableView = self.tableView
    }
    
    
    override func viewDidLayoutSubviews() {
        self.tableView.tableHeaderView = self.headerView
        self.tableView.tableHeaderView?.frame = view.layoutMarginsGuide.layoutFrame
    }

}
