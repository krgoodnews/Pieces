//
//  CreateMemoView.swift
//  Pieces
//
//  Created by Goodnews on 2017. 11. 18..
//  Copyright © 2017년 goodnews. All rights reserved.
//

import UIKit

class CreateMemoView: YSView {
	
	let daisyBackgroundView = UIView().then {
		$0.backgroundColor = .daisy
	}
	
	let titleLabel = UILabel().then {
		$0.text = "Letters"
		$0.font = .boldBody
	}
	let textView = UITextView().then {
		$0.backgroundColor = .clear
		$0.font = .body
		$0.textColor = .greenery
	}
	
	override func setupView() {
		super.setupView()
		addSubview(daisyBackgroundView)
		addSubview(titleLabel)
		addSubview(textView)
		
		daisyBackgroundView.snp.remakeConstraints { make -> Void in
			make.top.left.right.equalTo(self)
			make.height.equalTo(50)
		}

		
		titleLabel.snp.remakeConstraints { make -> Void in
			make.top.equalTo(daisyBackgroundView).offset(16)
			make.left.equalTo(daisyBackgroundView).offset(16)
			make.width.equalTo(100)
			
		}
		print(textView.textContainerInset)
		textView.snp.remakeConstraints { make -> Void in
			make.top.equalTo(daisyBackgroundView).offset(6)
			make.bottom.right.equalTo(daisyBackgroundView)
			make.left.equalTo(titleLabel.snp.right)
		}
	}
	
}
