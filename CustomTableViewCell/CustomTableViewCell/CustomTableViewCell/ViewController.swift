//
//  ViewController.swift
//  CustomTableViewCell
//
//  Created by Mac on 12/07/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource ,UITableViewDelegate{
    
    
    
    @IBOutlet weak var table: UITableView!
    
    struct Sunset{
        let title: String
        let  imageName: String
    }
    
    let data: [Sunset] = [
        Sunset(title: "Morning Run", imageName: "Sunset1"),
        Sunset(title: "Evening Sunset", imageName: "Sunset2"),
        Sunset(title: "Vaction Photos", imageName: "Sunset3"),
        Sunset(title: "AwesomeSunset Photos", imageName: "Sunset4"),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let sunset = data[indexPath.row]
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.label.text = sunset.title
        cell.iconImageView.image = UIImage (named: sunset.imageName)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
        
    }

}

