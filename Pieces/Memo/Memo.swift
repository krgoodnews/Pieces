//
//  Memo.swift
//  Pieces
//
//  Created by Goodnews on 2017. 11. 18..
//  Copyright © 2017년 goodnews. All rights reserved.
//

import UIKit

struct Memo {
	let type: MemoType
	let text: String?
	let img: UIImage?
	let createDate: Date?
	
	init(_ type: MemoType, text: String) {
		self.type = type
		self.createDate = Date()
		
		self.text = text
		self.img = nil
	}
}

enum MemoType: String {
	case Text
	case Image
	case Video
	case Link
	case Voice
	case Location
}
