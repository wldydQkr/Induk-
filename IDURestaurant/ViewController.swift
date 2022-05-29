//
//  ViewController.swift
//  IDURestaurant
//
//  Created by 박지용 on 2022/02/06.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var myTable: UITableView!

    let nameList = ["하다 식당", "피자굽는 오빠", "냉삼", "스타벅스", "블루포트"]
    let subList = ["🇯🇵", "🇮🇹", "🇰🇷", "Cafe", "Cafe"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTable.delegate = self
        myTable.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameList.count // 셀 개수
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1 // 섹션 리턴 값
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        performSegue(withIdentifier: "DetailView", sender: indexPath.row)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! MyTableViewCell
        
        cell.nameLabel?.text = self.nameList[indexPath.row] // textLabel 출력
        cell.subNameLabel?.text = self.subList[indexPath.row] // detailTaxtLabel 출력
        cell.cellImage?.image = UIImage(named: "\(indexPath.row).jpeg") // cell UIImage 삽입
        
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DetailView" {
        let nextViewController = segue.destination as? DetailViewController
        if let value1 = sender as? Int {
            nextViewController?.hang = value1
            }
        }
        }
}



