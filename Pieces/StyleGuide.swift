//
//  StyleGuide.swift
//  Pieces
//
//  Created by Goodnews on 2017. 11. 18..
//  Copyright © 2017년 goodnews. All rights reserved.
//

import UIKit

class CustomNavigationController: UINavigationController {
	override var preferredStatusBarStyle: UIStatusBarStyle {
		return .lightContent
	}
}
extension UIColor {
	
//	static let pWhite = UIColor("FBFCFD")
//	static let pBlue = UIColor("7BABED")
//	static let pPink = UIColor("F5C1D7")
//	static let pYellow = UIColor("FBEBBE")
//	static let pGray = UIColor("CED6E2")

	static let gold = UIColor("CDA34F")
	static let daisy = UIColor("E9E7DA")
	static let stem = UIColor("636B46")
	static let greenery = UIColor("373F27")
	
	static let dusty = UIColor("96868F")
	static let lavendar = UIColor("6D7993")
	static let overcast = UIColor("9899A2")
	static let paper = UIColor("D5D5D5")
	
	static let fresh = UIColor("F7F5E6")
	static let vermillion = UIColor("333A56")
	static let sunshine = UIColor("52658F")
	static let clean = UIColor("E8E8E8")
	
}

extension UIFont {
	static let boldBody = UIFont.boldSystemFont(ofSize: 17)
	static let body = UIFont.systemFont(ofSize: 17)
}

