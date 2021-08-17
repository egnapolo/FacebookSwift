//
//  CellCustomTableViewCell.swift
//  Facebook
//
//  Created by Egna Lizeth Polo Rubiano on 13/08/2021.
//

import UIKit

class CellCustomTableViewCell: UITableViewCell {
    @IBOutlet weak var imageCellView: UIView!
    @IBOutlet weak var nameCellLabel: UILabel!
    @IBOutlet weak var messageCellLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageCellView.clipsToBounds = true
        imageCellView.layer.cornerRadius = imageCellView.frame.width / 2
        // Initialization code
    }
    func setUpCell(usename: String, message: String){
        nameCellLabel.text = usename
        messageCellLabel.text = message
    }
    /*override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }*/
    
}
