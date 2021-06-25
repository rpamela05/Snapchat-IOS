//
//  ElegirUsuarioViewController.swift
//  Snapchat
//
//  Created by Ruth Carbajal on 6/24/21.
//  Copyright © 2021 Ruth Carbajal. All rights reserved.
//

import UIKit

class ElegirUsuarioViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource=self
        
    }
    

}
