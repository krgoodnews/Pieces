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

		setupView()
 	}
	
	/// NaviBar, tableView 설정
	func setupView() {
		navigationItem.title = "The pieces of memory"
		
		let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(didTapAdd))
		navigationItem.rightBarButtonItem = addButton
		
		tableView.backgroundColor = .stem
		//		tableView.separatorStyle = .none
		tableView.register(MemoCell.self, forCellReuseIdentifier: cellID)
	}
	
	/// createMemoVC로 이동
	@objc private func didTapAdd() {
		let createMemoVC = CreateMemoVC()
		createMemoVC.delegate = self
		createMemoVC.memoType = .Text
		
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
	
	override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
		let deleteAction = UITableViewRowAction(style: .destructive, title: "Delete") { (action, indexPath) in
			let memo = self.memos[indexPath.row]
			print("Attemping to delete memo:", memo.text ?? "nil")
			
			// remove the company from our tableView
			self.memos.remove(at: indexPath.row)
			self.tableView.deleteRows(at: [indexPath], with: .automatic)
			
//			// delete the company from CoreData
//			let context = CoreDataManager.shared.persistentContainer.viewContext
//
//			context.delete(company)
//
//			do {
//				try context.save()
//			} catch let saveErr {
//				print("Failed to delete company:", saveErr)
//			}
		}
		deleteAction.backgroundColor = .greenery
		
//		let editAction = UITableViewRowAction(style: .normal, title: "Edit", handler: editHandlerFunction)
//		editAction.backgroundColor = .darkBlue
		
		
		return [deleteAction]
	}

}

extension MemoListVC: CreateMemoDelegate {
	
	// delegate
	func didAddMemo(memo: Memo) {
		self.memos.append(memo)
		let newIndexPath = IndexPath(row: memos.count - 1, section: 0)
		tableView.insertRows(at: [newIndexPath], with: .automatic)
	}
}

