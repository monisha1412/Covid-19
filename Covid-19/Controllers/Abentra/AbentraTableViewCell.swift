//
//  AbentraTableView swift
//  Covid-19
//
//  Created by monica s b on 30/04/20.
//  Copyright © 2020 monica s b. All rights reserved.
//

import UIKit

class AbentraTableViewCell: UITableViewCell {

    @IBOutlet weak var completeView: UIView!
    @IBOutlet weak var imageOfAbentra: UIImageView!
    @IBOutlet weak var titleOfAbentra: UILabel!
    @IBOutlet weak var descOfAbentra: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func completeViewCustomization()  {
         completeView.layer.cornerRadius = 5
         completeView.layer.borderWidth = 1.0
         completeView.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
}
