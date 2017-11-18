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
	
	func setupBackgroundView(height: CGFloat) -> UIView {
		let daisyBackgroundView = UIView().then {
			$0.backgroundColor = .daisy
		}
		
		view.addSubview(daisyBackgroundView)
		
//
//		lightBlueBackgroundView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
//		lightBlueBackgroundView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
//		lightBlueBackgroundView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
//		lightBlueBackgroundView.heightAnchor.constraint(equalToConstant: height).isActive = true
//
		daisyBackgroundView.snp.remakeConstraints { make -> Void in
			make.top.left.right.equalTo(view)
			make.height.equalTo(height)
		}

		return daisyBackgroundView
	}
	
	/// 취소버튼(창닫기) 추가
	func setupCancelButton() {
		navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(handleCancelModal))
	}
	@objc func handleCancelModal() {
		dismiss(animated: true, completion: nil)
	}
	
}
