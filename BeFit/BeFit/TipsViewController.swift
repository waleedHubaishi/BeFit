//
//  TipsViewController.swift
//  BeFit
//
//  Created by Waleed al-Hubaishi on 07.05.18.
//  Copyright © 2018 Waleed al-Hubaishi. All rights reserved.
//

import UIKit

class TipsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tipsLabel: UILabel!
    
    @IBOutlet weak var bgPhoto: UIImageView!
    @IBOutlet weak var tipsTable: UITableView!
    @IBOutlet weak var choosingLabel: UILabel!
    
    var data = DataClass()
    var sportPrefrences = SportSelections()


    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(sportPrefrences.sportlevel)
        print(sportPrefrences.sportType)

        // Do any additional setup after loading the view.
        self.tipsTable.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.tipsTable.backgroundColor = UIColor.white
        self.tipsTable.dataSource=self
        self.tipsTable.delegate=self
        
        tipsTable.backgroundView = nil
        tipsTable.backgroundColor = UIColor.clear
        
        bgPhoto.layer.cornerRadius = 10
        bgPhoto.clipsToBounds = true
        data.determineTheTips(sportPrefrences:sportPrefrences)

        
        tipsTable.rowHeight = UITableViewAutomaticDimension
        tipsTable.estimatedRowHeight = 44
        
        tipsTable.reloadData()
        
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(data.tips.count != 0){
            return data.tips.count
        }
        else{
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        //cell.backgroundColor = UIColor.clear
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tipCell", for: indexPath) as! TipsTableViewCell
        cell.backgroundColor = UIColor.clear
        
        /*let screenSize = UIScreen.main.bounds
        let separatorHeight = CGFloat(2.0)
        let additionalSeparator = UIView.init(frame: CGRect(x: 0, y: cell.frame.size.height-separatorHeight, width: screenSize.width, height: separatorHeight))
        additionalSeparator.backgroundColor = UIColor.gray
        cell.addSubview(additionalSeparator)*/
        cell.selectionStyle = .none
        cell.tipLabel.text = data.tips[indexPath.row]
        cell.tipLabel.sizeToFit()
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
