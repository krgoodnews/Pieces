//
//  UIViewController+.swift
//  Pieces
//
//  Created by Goodnews on 2017. 11. 18..
//  Copyright © 2017년 goodnews. All rights reserved.
//

import UIKit
import SnapKit

extension UIViewController {
	
	/// 취소버튼(창닫기) 추가
	func setupCancelButton() {
		navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(handleCancelModal))
	}
	@objc func handleCancelModal() {
		dismiss(animated: true, completion: nil)
	}
	
}
