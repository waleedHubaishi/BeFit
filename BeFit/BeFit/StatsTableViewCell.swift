//
//  StatsTableViewCell.swift
//  BeFit
//
//  Created by Waleed al-Hubaishi on 07.05.18.
//  Copyright © 2018 Waleed al-Hubaishi. All rights reserved.
//

import UIKit

class StatsTableViewCell: UITableViewCell {

    
    //those are the diffrent uielements inside the expected stats table view cells 
    @IBOutlet weak var sessionPeriodLabel: UILabel!
    @IBOutlet weak var sessionPeriodValue: UILabel!
    
    
    @IBOutlet weak var expectedBPMlabel: UILabel!
    @IBOutlet weak var expectedBPMValue: UILabel!
    
    
    @IBOutlet weak var totalDistancelabel: UILabel!
    @IBOutlet weak var totalDistanceValue: UILabel!
    
    
    @IBOutlet weak var expectedBurnedCalLabel: UILabel!
    @IBOutlet weak var exoectedBurnedCalValue: UILabel!
    
    @IBOutlet weak var heartImage: UIImageView!
    @IBOutlet weak var fireImage: UIImageView!
    @IBOutlet weak var nextImage: UIImageView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
