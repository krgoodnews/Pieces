//
//  CreateMemoVC.swift
//  Pieces
//
//  Created by Goodnews on 2017. 11. 18..
//  Copyright © 2017년 goodnews. All rights reserved.
//

import UIKit
import Then
import SnapKit

// Custom Delegation
protocol CreateMemoDelegate {
	func didAddMemo(memo: Memo)
}

class CreateMemoVC: UIViewController {
	
	var delegate: CreateMemoDelegate?
	
	// MARK: View
	let displayView = CreateMemoView()
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .greenery
		
		let saveButton = UIBarButtonItem(barButtonSystemItem: .save, target: self, action: #selector(didTapSave))
		navigationItem.rightBarButtonItem = saveButton
		
		setupNavi()
		setupView()
	}
	
	@objc private func didTapSave() {
		createCompany()
	}
	private func createCompany() {
		print("trying create memo")
		let memo = Memo(text: displayView.textView.text)
		
		self.dismiss(animated: true) {
			self.delegate?.didAddMemo(memo: memo)
		}
	}
	private func setupNavi() {
		navigationItem.title = "Write your piece"
		setupCancelButton()
	}
	
	private func setupView() {
		
		
		view = displayView
	}
	
	@objc private func didTapClose() {
		dismiss(animated: true, completion: nil)
	}
	
}
