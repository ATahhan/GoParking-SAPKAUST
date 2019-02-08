//
//  MapViewController.swift
//  GoParking
//
//  Created by Ammar AlTahhan on 08/02/2019.
//  Copyright © 2019 SAP. All rights reserved.
//

import UIKit

class MapViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        tableView.scrollRectToVisible(CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height - 100), animated: true)
    }
    
    private func setupUI() {
        
    }

}
