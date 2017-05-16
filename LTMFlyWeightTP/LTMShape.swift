//
//  LTMShape.swift
//  LTMFlyWeightTP
//

import Foundation

class LTMShape {
    var size:Int {
        return MemoryLayout.size(ofValue: self)
    }
    
    var id:String? {
        return nil;
    }
    
    func printShape() -> Void { }
}
