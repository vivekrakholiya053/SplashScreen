//
//  languageTableViewCell.swift
//  SplashScreen
//
//  Created by Rakholiya vivek on 07/09/25.
//

import UIKit

class languageTableViewCell: UITableViewCell {

    
    @IBOutlet weak var tick: UIImageView!
    @IBOutlet weak var circleImage: UIImageView!
    @IBOutlet weak var languagetype: UILabel!
    @IBOutlet weak var languageName: UILabel!
    @IBOutlet weak var flagImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
