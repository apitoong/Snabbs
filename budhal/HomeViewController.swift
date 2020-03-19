//
//  HomeViewController.swift
//  budhal
//
//  Created by afitra mamor on 18/03/20.
//  Copyright © 2020 Snabb. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    var dataList : [(time:String, title:String, setting:String)] =
        [
        (time:"05:00", title:"makan", setting:"leave in q week"),
        (time:"06:00", title:"berangkat sekolah", setting:"leave in q week"),
        (time:"07:00", title:"berangkat kantor", setting:"leave in q week")
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataList.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ScheduleTableViewCell", for: indexPath) as! ScheduleTableViewCell
        cell.timeLabel.text = dataList[indexPath.row].time
        cell.titleLabel.text = dataList[indexPath.row].title
        cell.settingLabel.text = dataList[indexPath.row].setting
            return cell
        
       }

}
