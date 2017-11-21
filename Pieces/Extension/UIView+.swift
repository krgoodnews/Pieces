//
//  UIView+.swift
//  Pieces
//
//  Created by Goodnews on 2017. 11. 21..
//  Copyright © 2017년 goodnews. All rights reserved.
//

import UIKit


extension UIView {
	
	/// 점선 찍기
	func addDashedBorder() {
		let border = CAShapeLayer();
		border.strokeColor = UIColor.black.cgColor;
		border.fillColor = nil;
		border.lineDashPattern = [4, 4];
		border.path = UIBezierPath(rect: self.bounds).cgPath
		border.frame = self.bounds;
		self.layer.addSublayer(border);
	}
}
