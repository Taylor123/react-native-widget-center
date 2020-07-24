//
//  RNWidgetCenter.swift
//  RNWidgetCenter
//
//  Created by Taylor Johnson on 7/20/20.
//

import Foundation
import WidgetKit

@available(iOS 14, *)
@objc(RNWidgetCenter)
class RNWidgetCenter: NSObject {
	
	@objc static func requiresMainQueueSetup() -> Bool {
		return false
	}
	
	@objc(reloadTimelines:)
	func reloadTimelines(_ kind: String) {
		#if arch(arm64) || arch(i386) || arch(x86_64)
		WidgetCenter.shared.reloadTimelines(ofKind: kind)
		#endif
	}
	
	@objc(reloadAllTimelines)
	func reloadAllTimelines() {
		#if arch(arm64) || arch(i386) || arch(x86_64)
		WidgetCenter.shared.reloadAllTimelines()
		#endif
	}
}
