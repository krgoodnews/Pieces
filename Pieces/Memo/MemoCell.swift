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
		}
	}
	
	// MARK: View
	
	let typeImgView = UIImageView(image: nil).then {
		$0.contentMode = .scaleAspectFit
		$0.backgroundColor = .gold
	}
	
	let titleLabel = UILabel().then {
		$0.textColor = .greenery
		$0.font = .body
		$0.numberOfLines = 0
	}
	
	let dateLabel = UILabel().then { // 00.00.00.
		$0.text = "00.00.00."
		$0.font = .systemFont(ofSize: 12)
		$0.textColor = .lightGray
	}
	override func setupView() {
		super.setupView()
		backgroundColor = .daisy

		addSubview(titleLabel)
		titleLabel.snp.remakeConstraints { make -> Void in
			make.top.right.equalTo(self).inset(8)
			make.left.equalTo(self).offset(16)
//			make.bottom.equalTo(self).offset(-44)
		}

	
		addSubview(typeImgView)
		typeImgView.snp.remakeConstraints { make -> Void in
			make.top.bottom.equalTo(self)
			make.right.equalTo(titleLabel.snp.left).offset(-8)
			make.width.equalTo(8)
		}
		
		addSubview(dateLabel)
		dateLabel.snp.remakeConstraints { make -> Void in
			make.top.equalTo(titleLabel.snp.bottom).offset(6)
			make.right.bottom.equalTo(self).inset(4)
			
		}
	}
}
