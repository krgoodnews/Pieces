//
//  MemoListVC.swift
//  Pieces
//
//  Created by Goodnews on 2017. 11. 18..
//  Copyright © 2017년 goodnews. All rights reserved.
//

import UIKit


class MemoListVC: UITableViewController {

	override func viewDidLoad() {
		super.viewDidLoad()

		navigationItem.title = "The pieces of memory"
		
		let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(didTapAdd))
		navigationItem.rightBarButtonItem = addButton
		
		tableView.backgroundColor = .daisy
 	}
	
	@objc private func didTapAdd() {
		let destVC = CreateMemoVC()
		
		let naviVC = CustomNavigationController(rootViewController: destVC)
		
		present(naviVC, animated: true, completion: nil)
		
	}

	
	
	
}

