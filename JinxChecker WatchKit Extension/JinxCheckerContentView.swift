//
//  JinxCheckerContentView.swift
//  JinxChecker WatchKit Extension
//
//  Created by 土居将史 on 2019/12/23.
//  Copyright © 2019 土居将史. All rights reserved.
//

import SwiftUI
import HealthKit

struct JinxCheckerContentView: View {
    let healthData = HealthData()
    
    var body: some View {
        VStack{
            Text(healthData.getAvailableFlagToString())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        JinxCheckerContentView()
    }
}


