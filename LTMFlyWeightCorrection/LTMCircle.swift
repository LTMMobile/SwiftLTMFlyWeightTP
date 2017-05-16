//
//  LTMCircle.swift
//  LTMFlyWeightTP
//

import Foundation

class LTMCircle : LTMShape {
    var center:LTMPoint = LTMPoint()
    var radius:Float = 0.0
    
    var color:LTMColor {
        get {
            return internalCircle!.color
        }
        set(c) {
            internalCircle = LTMFactoryShape.getInternalCircle(color: color, thickness: thickness, type: type)
        }
    }
    
    var thickness:Double {
        get {
            return internalCircle!.thickness
        }
        set(t) {
            internalCircle = LTMFactoryShape.getInternalCircle(color: color, thickness: thickness, type: type)
        }
    }
    
    var type:LTMTypeOfLine {
        get {
            return internalCircle!.type
        }
        set(t) {
            internalCircle = LTMFactoryShape.getInternalCircle(color: color, thickness: thickness, type: type)
        }
    }
    
    var identifier:String
    
    var internalCircle:LTMInternalShape? = nil

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
        
        internalCircle = LTMFactoryShape.getInternalCircle(color: color, thickness: thickness, type: type)
        
        self.identifier = id
    }
}
