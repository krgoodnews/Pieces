//
//  MemoCell.swift
//  Pieces
//
//  Created by Goodnews on 2017. 11. 18..
//  Copyright © 2017년 goodnews. All rights reserved.
//

import UIKit
import Then
import SnapKit

class MemoCell: YSTableViewCell {
	
	// MARK: Data Model
	var memo: Memo? {
		didSet {
			titleLabel.text = memo?.text
			dateLabel.text = memo?.createDate?.toString()
		}
	}
	
	// MARK: View
	
	let typeImgView = UIImageView(image: nil).then {
		$0.contentMode = .scaleAspectFit
		$0.backgroundColor = .vermillion
	}
	
	let titleLabel = UILabel().then {
		$0.textColor = .vermillion
		$0.font = .body
		$0.numberOfLines = 0
	}
	
	let dateLabel = UILabel().then { // 00.00.00.
		$0.text = "00.00.00."
		$0.font = .systemFont(ofSize: 12)
		$0.textColor = .lightGray
		$0.alpha = 0.5
	}
	override func setupView() {
		super.setupView()
		backgroundColor = .fresh

		addSubview(titleLabel)
		addSubview(typeImgView)
		addSubview(dateLabel)
		
		titleLabel.snp.remakeConstraints { make -> Void in
			make.top.right.equalTo(self).inset(8)
			make.left.equalTo(typeImgView.snp.right).offset(10)
//			make.bottom.equalTo(self).offset(-44)
		}

		typeImgView.snp.remakeConstraints { make -> Void in
			make.top.bottom.equalTo(self)
			make.left.equalTo(self)
			make.width.equalTo(6)
		}
		
		dateLabel.snp.remakeConstraints { make -> Void in
			make.top.equalTo(titleLabel.snp.bottom).offset(6)
			make.right.bottom.equalTo(self).inset(4)
			
		}
	}
}
