//
//  MemoListVC.swift
//  Pieces
//
//  Created by Goodnews on 2017. 11. 18..
//  Copyright © 2017년 goodnews. All rights reserved.
//

import UIKit


class MemoListVC: UITableViewController {

	// MARK: Data
	var memos: [Memo] = []
	let cellID = "memoCellID"
	
	
	// MARK: View
	
	override func viewDidLoad() {
		super.viewDidLoad()

		navigationItem.title = "The pieces of memory"
		
		let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(didTapAdd))
		navigationItem.rightBarButtonItem = addButton
		
		tableView.backgroundColor = .stem
//		tableView.separatorStyle = .none
		tableView.register(MemoCell.self, forCellReuseIdentifier: cellID)
 	}
	
	@objc private func didTapAdd() {
		let createMemoVC = CreateMemoVC()
		createMemoVC.delegate = self
		
		let naviVC = CustomNavigationController(rootViewController: createMemoVC)
		
		present(naviVC, animated: true, completion: nil)
		
	}
	
	// MARK: TableView
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return memos.count
	}
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! MemoCell
		let memo = memos[indexPath.row]
		
		cell.memo = memo
		
		return cell
	}

}

extension MemoListVC: CreateMemoDelegate {
	func didAddMemo(memo: Memo) {
		self.memos.append(memo)
		let newIndexPath = IndexPath(row: memos.count - 1, section: 0)
		tableView.insertRows(at: [newIndexPath], with: .automatic)
	}
	
	
}

