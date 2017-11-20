//
//  CreateMemoView.swift
//  Pieces
//
//  Created by Goodnews on 2017. 11. 18..
//  Copyright © 2017년 goodnews. All rights reserved.
//

import UIKit

class CreateMemoView: YSView {
	
	let freshBackgroundView = UIView().then {
		$0.backgroundColor = .fresh
	}
	
	let titleLabel = UILabel().then {
		$0.text = "Letters"
		$0.font = .boldBody
		$0.textColor = .vermillion
	}
	let textView = UITextView().then {
		$0.backgroundColor = .clear
		$0.font = .body
		$0.textColor = .vermillion
	}
	let textField = UITextField().then {
		$0.placeholder = "Text here..."
		$0.textColor = .vermillion
	}
	
	override func setupView() {
		super.setupView()
		
		
	}
	
	func setupView(memoType: MemoType) {
		super.setupView()
		
		if memoType == .Text {
			addSubview(freshBackgroundView)
			addSubview(titleLabel)
			addSubview(textView)
			
			changeFreshViewHeight(50)
			
			
			titleLabel.snp.remakeConstraints { make -> Void in
				make.top.equalTo(freshBackgroundView).offset(16)
				make.left.equalTo(freshBackgroundView).offset(16)
				make.width.equalTo(100)
				
			}
			textView.snp.remakeConstraints { make -> Void in
				make.top.equalTo(freshBackgroundView).offset(6)
				make.bottom.right.equalTo(freshBackgroundView)
				make.left.equalTo(titleLabel.snp.right)
			}
			
		} else if memoType == .Image {
			addSubview(freshBackgroundView)
			addSubview(titleLabel)
			addSubview(textField)
			
			let width = UIWindow().frame.width
			changeFreshViewHeight((width / 16 * 9) + 50) // 16:9 가로사진에 어울리게?
			
			titleLabel.snp.remakeConstraints { make -> Void in
//				make.top.equalTo(freshBackgroundView).offset(160)
				make.left.equalTo(freshBackgroundView).offset(16)
				make.bottom.equalTo(freshBackgroundView)
				make.width.equalTo(100)
				make.height.equalTo(50)
			}
			textField.snp.remakeConstraints { make -> Void in
				make.top.equalTo(titleLabel)
				make.bottom.right.equalTo(freshBackgroundView)
				make.left.equalTo(titleLabel.snp.right)
			}
		}
	}
	
	func changeFreshViewHeight(_ height: CGFloat) {
		freshBackgroundView.snp.remakeConstraints { make -> Void in
			make.top.left.right.equalTo(self)
			make.height.equalTo(height)
		}
	}
	
}
