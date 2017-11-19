//
//  AppDelegate.swift
//  Pieces
//
//  Created by Goodnews on 2017. 11. 18..
//  Copyright © 2017년 goodnews. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?


	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
		
		UINavigationBar.appearance().tintColor = .daisy
		UINavigationBar.appearance().isTranslucent = false
		
		UINavigationBar.appearance().barTintColor = .gold
		UINavigationBar.appearance().prefersLargeTitles = true
		
		UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.daisy]
		UINavigationBar.appearance().titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.daisy]
		
		UINavigationBar.appearance().shadowImage = UIImage()
		
		// 초기세팅
		window = UIWindow()
		window?.makeKeyAndVisible()
		
		let mainVC = MemoListVC()
		let navController = CustomNavigationController(rootViewController: mainVC)
		window?.rootViewController = navController
		
		return true
	}



}

