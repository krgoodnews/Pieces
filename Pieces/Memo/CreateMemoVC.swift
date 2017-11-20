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
	var memo: Memo?
	
	var memoType: MemoType? {
		didSet {
			guard let type = memoType else { return }
			self.displayView.setupView(memoType: type)
			switch type {
			case .Text:
				navigationItem.title = "Write piece"
			case .Image:
				navigationItem.title = "Paint piece"
			default:
				navigationItem.title = "Create memo"
			}
		}
	}
	
	
	// MARK: View
	let displayView = CreateMemoView()
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		let saveButton = UIBarButtonItem(barButtonSystemItem: .save, target: self, action: #selector(didTapSave))
		navigationItem.rightBarButtonItem = saveButton
		
		setupNavi()
		setupView()
	}
	
	@objc private func didTapSave() {
		createMemo()
	}
	private func createMemo() {
		print("---trying create memo...")
		guard let type = memoType else { return }
	
		switch type {
		case .Text:
			guard displayView.textView.text.count != 0 else {
				print("Text를 입력해주세요.")
				return
			}
			let text = displayView.textView.text!
			self.memo = Memo(.Text, text: text)
		default:
			break
		}
		
		
		self.dismiss(animated: true) {
			guard let memo = self.memo else { return }
			self.delegate?.didAddMemo(memo: memo)
		}
	}
	private func setupNavi() {
		setupCancelButton()
	}
	
	private func setupView() {

		view = displayView
	}
	
	@objc private func didTapClose() {
		dismiss(animated: true, completion: nil)
	}
	
	

}
