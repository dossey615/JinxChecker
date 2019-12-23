//
//  ContentView.swift
//  JinxChecker WatchKit Extension
//
//  Created by 土居将史 on 2019/12/23.
//  Copyright © 2019 土居将史. All rights reserved.
//

import SwiftUI
import HealthKit

struct ContentView: View {
    var label:String = check()
    let healthStore = HKHealthStore()
    
    var body: some View {
        VStack{
            Text("Hello, World!")
            Text(label)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

func check() -> String{
    var result = "hoge"
    if HKHealthStore.isHealthDataAvailable(){
         result = "YES"
    }
    return result
}
