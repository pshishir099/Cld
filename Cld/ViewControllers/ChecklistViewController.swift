 //
//  ViewController.swift
//  Cld
//
//  Created by Shishir P on 28/01/18.
//  Copyright © 2018 Shishir P. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController {


    var items: [checklistItem]
    required init?(coder aDecoder: NSCoder) {
        items = [checklistItem]()

        let row0Item = checklistItem()
        row0Item.text = "Sleep"
        row0Item.checked = true
        items.append(row0Item)

        let row1Item = checklistItem()
        row1Item.text = "Learn IOS App Development"
        row1Item.checked = false
        items.append(row1Item)
        items.append(row1Item)
        items.append(row0Item)
        items.append(row1Item)
        items.append(row0Item)
        items.append(row1Item)
        items.append(row0Item)
        items.append(row1Item)
        items.append(row0Item)
        items.append(row1Item)
        items.append(row0Item)
        items.append(row1Item)
        items.append(row0Item)

        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath){
        let item = items[indexPath.row]
        item.toggleChecked()
            configureCheckmark(for: cell, with: item)
            
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CheckListItem", for: indexPath)
        let item = items[indexPath.row]
        configureText(for: cell, with: item)
        configureCheckmark(for: cell, with: item)
        return cell
        
    }
    func configureText(for cell: UITableViewCell, with item: checklistItem){
        let label = cell.viewWithTag(1000) as! UILabel
        label.text = item.text
    }
    func configureCheckmark(for cell: UITableViewCell, with item: checklistItem){
        let label = cell.viewWithTag(1001) as! UILabel
        if item.checked == true
        {
            label.text = "√"
        }else{
            label.text = " "
        }
    }
}

