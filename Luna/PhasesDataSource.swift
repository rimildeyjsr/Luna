//
//  PhasesDataSource.swift
//  Luna
//
//  Created by Rimil Dey on 08/04/18.
//  Copyright © 2018 Rimil Dey. All rights reserved.
//

import UIKit

class PhasesDataSource: NSObject {
    
    weak var tableView: UITableView? {
        didSet {
            self.tableView?.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
            self.tableView?.reloadData()
        }
    }
}


extension PhasesDataSource: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Moon Phase Cell"
        return cell
    }
}

