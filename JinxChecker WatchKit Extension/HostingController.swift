//
//  HostingController.swift
//  JinxChecker WatchKit Extension
//
//  Created by 土居将史 on 2019/12/23.
//  Copyright © 2019 土居将史. All rights reserved.
//

import WatchKit
import Foundation
import SwiftUI
import HealthKit

class HostingController: WKHostingController<JinxCheckerContentView> {
    override var body: JinxCheckerContentView {
        return JinxCheckerContentView()
    }
}
