//
//  LTMCircle.swift
//  LTMFlyWeightTP
//

import Foundation

class LTMCircle : LTMShape {
    var center:LTMPoint = LTMPoint()
    var radius:Float = 0.0
    
    var color:LTMColor = .black
    var thickness:Double = 1.0
    var type:LTMTypeOfLine = .continuous
    
    var identifier:String
    
    override var id:String? {
        return identifier;
    }
    
    override var size:Int {
        return MemoryLayout.size(ofValue: center) + MemoryLayout.size(ofValue: radius) + MemoryLayout.size(ofValue: color)
            + MemoryLayout.size(ofValue: thickness) + MemoryLayout.size(ofValue: type)
    }
    
    override func printShape() -> Void {
        print("id : \(identifier), \(center), \(p2), color= \(color), thickness= \(thickness), type= \(type)")
    }
    
    init( id:String, center:LTMPoint, radius:Float, color:LTMColor, thickness:Double, type:LTMTypeOfLine ) {
        self.center = center
        self.radius = radius
        self.color = color
        self.thickness = thickness
        self.type = type
        self.identifier = id
    }
}
