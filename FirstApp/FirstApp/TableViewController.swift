//
//  TableViewController.swift
//  TheSwift
//
//  Created by Lea Marolt on 11/23/15.
//  Copyright © 2015 Lea Marolt Sonnenschein. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rowIndex.rowNums
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("rowCell", forIndexPath: indexPath)

        if let rowIndex = rowIndex(rawValue: indexPath.row) {
            cell.textLabel?.text = rowIndex.rowTitle()
            cell.detailTextLabel?.text = rowIndex.rowDetail()
        }

        return cell
    }


}
