//
//  CreateMemoVC.swift
//  Pieces
//
//  Created by Goodnews on 2017. 11. 18..
//  Copyright © 2017년 goodnews. All rights reserved.
//

import UIKit
import Then
import SnapKit

class CreateMemoVC: UIViewController {
	
	// MARK: View
	let displayView = CreateMemoView()
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .greenery
		
		
		setupNavi()
		setupView()
	}
	
	private func setupNavi() {
		navigationItem.title = "Write your piece"
		setupCancelButton()
	}
	
	private func setupView() {
		
		
		view = displayView
	}
	
	@objc private func didTapClose() {
		dismiss(animated: true, completion: nil)
	}
	
}
