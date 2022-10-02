//
//  Ex1Model.swift
//  SampleExT1
//
//  Created by pleocene on 2021/12/05.
//

import Foundation

class Ex1Model {
    // コミットCPA
    func dummyFuncCPA(){
        print("dummy funcA>")
    }

    // コミットB
    func dummyFuncB(){
        print("dummy func>")
    }

    
    init() {
        debugPrint("XXX>Git1>Git2>1")
        debugPrint("Git1>Git2>1")
        debugPrint("1")
    }
    
    func funcExT1(){
        debugPrint("XXX>Git1>Git2>1")
        debugPrint("Git1>1")
        debugPrint("2")
        debugPrint("3")
    }
    func funcExT2(){
        debugPrint("Git2>1")
        debugPrint("1")
        debugPrint("2")
        debugPrint("3")
    }
    func funcExT3(){
        debugPrint("Git1>1 >PJ2")
        debugPrint("2")
        debugPrint("3")
    }
    
}

