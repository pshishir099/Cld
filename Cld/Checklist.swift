//
//  Checklist.swift
//  Cld
//
//  Created by Shishir P on 28/01/18.
//  Copyright © 2018 Shishir P. All rights reserved.
//

import Foundation

class checklistItem: NSObject{
    var text: String = ""
    var checked: Bool = false
    func toggleChecked(){
        checked = !checked
    }
}
