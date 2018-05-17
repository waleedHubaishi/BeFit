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
        let cell = tableView.dequeueReusableCell(withIdentifier: "statsCell", for: indexPath) as! StatsTableViewCell
        
        cell.contentView.backgroundColor = UIColor.init(red: 17.0/255.0, green: 186.0/255.0, blue: 204.0/255.0, alpha: 1.0)

        
        cell.layer.cornerRadius = 15
        cell.layer.masksToBounds = true
        
        let tips = data.tips[indexPath.row]
        cell.expectedBPMValue.text = "120"
        cell.exoectedBurnedCalValue.text = "310"
        cell.sessionPeriodValue.text = "1:45 Hours"
        cell.totalDistanceValue.text = "0.6 Km"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        indexOfSelectedRow = (indexPath.row)
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "tips") as! TipsViewController
        //secondViewController.food = foodList[indexOfSelectedRow]
        //secondViewController.indexOfSelectedElement = indexOfSelectedRow
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
