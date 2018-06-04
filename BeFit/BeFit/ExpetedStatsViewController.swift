//
//  ExpetedStatsViewController.swift
//  BeFit
//
//  Created by Waleed al-Hubaishi on 07.05.18.
//  Copyright © 2018 Waleed al-Hubaishi. All rights reserved.
//

import UIKit

class ExpetedStatsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var expectedStatsLabel: UILabel!
    
    @IBOutlet weak var bgPhoto: UIImageView!
    @IBOutlet weak var choosingPhoto: UILabel!
    @IBOutlet weak var progressPhoto: UIImageView!
    @IBOutlet weak var statsTable: UITableView!
    
    var sportPrefrences = SportSelections()
    var data = DataClass()
    
    var indexOfSelectedRow:Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.statsTable.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.statsTable.backgroundColor = UIColor.white
        self.statsTable.dataSource=self
        self.statsTable.delegate=self
        
        statsTable.backgroundView = nil
        statsTable.backgroundColor = UIColor.clear
        
        bgPhoto.layer.cornerRadius = 10
        bgPhoto.clipsToBounds = true
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(data.expectedStats.count != 0){
            return data.expectedStats.count
        }
        else{
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 120.0;//Choose your custom row height
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.backgroundColor = UIColor.clear
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "statsCell", for: indexPath) as! StatsTableViewCell
        cell.backgroundColor = UIColor.clear
        
        let screenSize = UIScreen.main.bounds
        let separatorHeight = CGFloat(2.0)
        let additionalSeparator = UIView.init(frame: CGRect(x: 0, y: cell.frame.size.height-separatorHeight, width: screenSize.width, height: separatorHeight))
        additionalSeparator.backgroundColor = UIColor.gray
        cell.addSubview(additionalSeparator)
        
        cell.expectedBPMValue.text = data.expectedStats[indexPath.row]["bpm"]
        cell.exoectedBurnedCalValue.text = data.expectedStats[indexPath.row]["cal"]
        cell.sessionPeriodValue.text = data.expectedStats[indexPath.row]["period"]
        cell.totalDistanceValue.text = data.expectedStats[indexPath.row]["distance"]
        
        
        
        cell.selectionStyle = .none
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        indexOfSelectedRow = (indexPath.row)
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "tips") as! TipsViewController
        secondViewController.sportPrefrences = sportPrefrences
        self.navigationController?.pushViewController(secondViewController, animated: true)
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
