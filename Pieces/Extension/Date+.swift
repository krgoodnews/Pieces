//
//  Date+.swift
//  Pieces
//
//  Created by Goodnews on 2017. 11. 19..
//  Copyright © 2017년 goodnews. All rights reserved.
//

import UIKit

extension Date {
	
	func toString(_ formatString: String = "yyyy.MM.dd") -> String {

		let formatter = DateFormatter()
		formatter.dateFormat = formatString
		
		let result = formatter.string(from: self)
		
		return result
	}
}
