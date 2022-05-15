//
//  ViewController.swift
//  Training_TableView
//
//  Created by Phạm Tuấn Anh on 25/04/2022.
//

import UIKit

class ViewController: UIViewController {
    
    let tableView : UITableView = {
        let table = UITableView()
        table.register(UINib(nibName: "CustomCellNoButton", bundle: nil), forCellReuseIdentifier: "CustomCellNoButton")
        table.register(UINib(nibName: "CustomCellWithButton", bundle: nil), forCellReuseIdentifier: "CustomCellWithButton")
        return table
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.separatorStyle = .none
        tableView.delegate = self
        tableView.dataSource = self
    }
    override func viewDidLayoutSubviews() {
        tableView.frame = view.bounds
    }
}

extension ViewController : UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120.0
    }
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return componentsOfCells.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if componentsOfCells[indexPath.row].typeOfCell == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCellNoButton", for: indexPath) as! CustomFirstTableViewCell
            cell.configureFirst(dataCell: componentsOfCells[indexPath.row])
            return cell
        }
        else
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCellWithButton", for: indexPath) as! CustomSecondTableViewCell
            cell.configureSecond(dataCell: componentsOfCells[indexPath.row])
            return cell
        }
        
    }
}
