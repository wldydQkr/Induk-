//
//  DetailViewController.swift
//  IDURestaurant
//
//  Created by 박지용 on 2022/02/06.
//

import UIKit

class DetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var detailTable: UITableView!
    @IBOutlet weak var detailImage: UIImageView!
    @IBOutlet weak var detailLabel: UILabel!
    
    @IBAction func callBtn(_ sender: UIButton) {
        
    }
    
    @IBAction func mpaBtn(_ sender: UIButton) {
        
    }
    
    var hang: Int?
    
    
    let nameList1 = ["하다 식당", "피자굽는 오빠", "냉삼", "스타벅스", "블루포트"]
    
    var nameList:[String]!
    var priceList:[String]!
    var imageList:[String]!
    
    //    override func viewWillAppear(_ animated: Bool) {
    //        super.viewWillAppear(animated)
    //        detailLabel.text = self.hang
    //        menuChocie()
    //    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailTable.delegate = self
        detailTable.dataSource = self
        detailImage?.image = UIImage(named: "\(hang ?? 0).jpeg")
        detailLabel.text = nameList1[hang ?? 0] // 헹의 값을 받아와서 매장이름 출력
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1 // 섹션 리턴 값
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath) as! DetailTableViewCell
    
        if hang == 0 { // 하다식당
            self.nameList = ["나이트로 콜드 브루", "콜드 브루", "콜드 브루 플로트"]
            self.priceList = ["6,000원", "4,500원", "5,900원"]
            self.imageList = ["3-0.jpeg", "3-1.jpeg", "3-2.jpeg"]
        } else if hang == 1 { // 피자굽는오빠
            self.nameList = ["고르곤졸라", "마르게리따", "파스타", "치즈밥"]
            self.priceList = ["14,000원", "14,000원", "9,000원", "8,000원"]
            self.imageList = ["3-0.jpeg", "3-1.jpeg", "3-2.jpeg", ""]
        } else if hang == 2 { // 냉삼
            self.nameList = ["나이트로 콜드 브루", "콜드 브루", "콜드 브루 플로트"]
            self.priceList = ["6,000원", "4,500원", "5,900원"]
            self.imageList = ["3-0.jpeg", "3-1.jpeg", "3-2.jpeg"]
        } else if hang == 3 { // 스타벅스
            self.nameList = ["나이트로 콜드 브루", "콜드 브루", "콜드 브루 플로트"]
            self.priceList = ["6,000원", "4,500원", "5,900원"]
            self.imageList = ["3-0.jpeg", "3-1.jpeg", "3-2.jpeg"]
        } else if hang == 4 { // 블루포트
            self.nameList = ["나이트로 콜드 브루", "콜드 브루", "콜드 브루 플로트"]
            self.priceList = ["6,000원", "4,500원", "5,900원"]
            self.imageList = ["3-0.jpeg", "3-1.jpeg", "3-2.jpeg"]
        }
        
        cell.menuLabel?.text = self.nameList[indexPath.row] // textLabel 출력
        cell.priceLabel?.text = self.priceList[indexPath.row] // detailTaxtLabel 출력
        cell.menuImage?.image = UIImage(named: "\(self.imageList[indexPath.row])") // cell UIImage 삽입
        
        
        return cell
        
    }

    //    func menuChocie() {
    //        switch hang {
    //        case "하다 식당":
    //            self.nameList = ["나이트로 콜드 브루", "콜드 브루", "콜드 브루 플로트"]
    //            self.priceList = ["6000원", "4500원", "5900원"]
    //            self.imageList = ["3-0.jpeg", "3-1.jpeg", "3-2.jpeg"]
    //        case "피자굽는 오빠":
    //            self.nameList = ["나이트로 콜드 브루", "콜드 브루", "콜드 브루 플로트"]
    //            self.priceList = ["6000원", "4500원", "5900원"]
    //            self.imageList = ["3-0.jpeg", "3-1.jpeg", "3-2.jpeg"]
    //        case "냉삼":
    //            self.nameList = ["나이트로 콜드 브루", "콜드 브루", "콜드 브루 플로트"]
    //            self.priceList = ["6000원", "4500원", "5900원"]
    //            self.imageList = ["3-0.jpeg", "3-1.jpeg", "3-2.jpeg"]
    //        case "스타벅스":
    //            self.nameList = ["나이트로 콜드 브루", "콜드 브루", "콜드 브루 플로트"]
    //            self.priceList = ["6000원", "4500원", "5900원"]
    //            self.imageList = ["3-0.jpeg", "3-1.jpeg", "3-2.jpeg"]
    //        case "블루포트":
    //            self.nameList = ["나이트로 콜드 브루", "콜드 브루", "콜드 브루 플로트"]
    //            self.priceList = ["6000원", "4500원", "5900원"]
    //            self.imageList = ["3-0.jpeg", "3-1.jpeg", "3-2.jpeg"]
    //        default:
    //            return
    //        }
    //    }
    //
}
