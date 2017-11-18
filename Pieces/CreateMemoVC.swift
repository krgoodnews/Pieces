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

class CreateMemoVC: UIViewController {
	
	let textLabel = UILabel().then {
		$0.text = "Letters"
		$0.font = .boldBody
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .greenery
		
		
		setupNavi()
		setupView()
		
	}
	
	private func setupNavi() {
		navigationItem.title = "Write your piece"
		setupCancelButton()
	}
	
	private func setupView() {
		let daisyBackgroundView = setupBackgroundView(height: 50)
		let textView = UITextView().then {
			$0.backgroundColor = .clear
			$0.font = .body
		}
		
		view.addSubview(textLabel)
		view.addSubview(textView)
		textLabel.snp.remakeConstraints { make -> Void in
			make.top.equalTo(daisyBackgroundView)
			make.left.equalTo(daisyBackgroundView).offset(16)
			make.width.equalTo(100)
			make.height.equalTo(50)
		}
		textView.snp.remakeConstraints { make -> Void in
			make.top.bottom.right.equalTo(daisyBackgroundView)
			make.left.equalTo(textLabel.snp.right)
		}


	}
	
	@objc private func didTapClose() {
		dismiss(animated: true, completion: nil)
	}
	
}
