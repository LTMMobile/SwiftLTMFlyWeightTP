//
//  LTMLine.swift
//  LTMFlyWeightTP
//

import Foundation

class LTMLine : LTMShape {
    var p1:LTMPoint = LTMPoint()
    var p2:LTMPoint = LTMPoint()
    
    var color:LTMColor = .black
    var thickness:Double = 1.0
    var type:LTMTypeOfLine = .continuous
    
    var identifier:String
    
    override var id:String? {
        return identifier;
    }
    
    var length:Float {
        return LTMPoint.distance(from: p1, to: p2)
    }
    
    override var size:Int {
        return MemoryLayout.size(ofValue: p1) + MemoryLayout.size(ofValue: p2) + MemoryLayout.size(ofValue: color)
                + MemoryLayout.size(ofValue: thickness) + MemoryLayout.size(ofValue: type)
    }
    
    override func printShape() -> Void {
        print("id : \(identifier), \(p1), \(p2), color= \(color), thickness= \(thickness), type= \(type)")
    }
    
    init( id:String, from:LTMPoint, to:LTMPoint, color:LTMColor, thickness:Double, type:LTMTypeOfLine ) {
        self.p1 = from
        self.p2 = to
        self.color = color
        self.thickness = thickness
        self.type = type
        self.identifier = id
    }
}
