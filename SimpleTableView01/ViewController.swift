//
//  ViewController.swift
//  SimpleTableView01
//
//  Created by D7703_15 on 2018. 5. 2..
//  Copyright © 2018년 D7703_15. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate
{
    @IBOutlet weak var myTableVIew: UITableView!
    var animals = ["고양이", "원숭이", "강아지", "돼지", "햄스터"]
    var country = ["한국", "태국", "미국", "영국", "아프리카"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //delegate와 ViewController 연결
        myTableVIew.dataSource = self
        myTableVIew.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            //cell 메모리 재활용
            let identifier = "RE"
            let cell = myTableVIew.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
            let myImage = UIImage(named:"\(indexPath.row+1).png")
            cell.imageView?.image = myImage
            cell.textLabel?.text = animals[indexPath.row]
            cell.detailTextLabel?.text = country[indexPath.row]
            return cell
    }
}

