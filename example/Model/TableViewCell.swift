//
//  TableViewCell.swift
//  example
//
//  Created by Goutham Boya on 11/10/22.
//

import UIKit


class TableViewCell: UITableViewCell {

    @IBOutlet weak var firstlbl: UILabel!
    
    @IBOutlet weak var seclbl: UILabel!
    
    @IBOutlet weak var thirlbl: UILabel!
    
    @IBOutlet weak var foulbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
      
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
