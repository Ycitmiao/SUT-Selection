//
//  SelectionListController.swift
//  SUT機種選択
//
//  Created by 孫苗 on 2016/12/19.
//  Copyright © 2016年 孫苗. All rights reserved.
//

import UIKit

class SelectionListController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    //设定数组SUTarray为SUT型号具体内容
    var SUTArray =
        ["SUT00D3021-30-B",
         "SUT00D8021-30-B",
         "SUT00D8021-21YB",
         "SUT00D8025-10YL",
         "SUT00D13021-10-B",
         "SUT00D13021-10YB",
         "S-SUT00D13025-11YL",
         "SUT00D15021-10-B",
         "SUT00D15021-10YB",
         "SUT00D20021-10-L",
         "S-SUT00D20021-12YL",
         "S-SUT00D20025-11YL",
         "SUT00S5021-21YA",
         "SUT00S8018-21YA",
         "SUT00S13018-10YA",
         "SUT00S13021-11YA",
         "SUT00S15018-10YA",
         "SUT00S20018-10YL",
         "SUT00S3018-30-A",
         "SUT00S5021-30-A",
         "SUT00S5025-10-L",
         "SUT00S8018-30-A",
         "SUT00S15018-10-A"]
    
    //设定发送数据变量
    var sendSelectedData = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    //指定cell的总数为23
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 23
    }
    
    //为每个cell添加具体显示内容
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //获取可复用cell
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "Cell")
        
        //设定cell内容为SUTarray的数据
        cell.textLabel?.text = SUTArray[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //获取cell的数据
        let indexPathValue: NSIndexPath = tableView.indexPathForSelectedRow! as NSIndexPath
        let currentCell = tableView.cellForRow(at: indexPathValue as IndexPath)! as UITableViewCell
        sendSelectedData = currentCell.textLabel!.text!
        //执行segue3，返回到主viewcontroller
        self.performSegue(withIdentifier: "Segue3", sender: self)
        
    }
    
    //设定将被点按的cell内容，即SUT型号返回到第一个ViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Segue3" {
            let controller = segue.destination as! ViewController
            controller.receivedData = sendSelectedData
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

    
}
