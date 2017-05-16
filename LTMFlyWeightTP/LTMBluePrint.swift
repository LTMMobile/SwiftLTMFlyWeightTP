//
//  LTMBluePrint.swift
//  LTMFlyWeightTP
//

import Foundation

class LTMBluePrint {
    
    private var dictOfShape = Dictionary<String, LTMShape>()
    
    /// retourne la taille cumulée des objets du dictionnaire
    var size:Int {
        // let t = arrayOfShape.reduce(0) { $0 + MemoryLayout.size(ofValue: $1) }
        let t = dictOfShape.reduce(0) { $0 + $1.value.size }
        return t
    }
    
    /// retire tous les shapes
    func reset() -> Void {
        dictOfShape.removeAll()
    }
    
    /// Ajoute un shape
    func addShape( shape:LTMShape ) -> Void {
        dictOfShape[shape.id!] = shape
    }
    
    func modifyShape( id:String, newcolor:LTMColor, newthickness:Double, newtype:LTMTypeOfLine ) {
        let sh:LTMShape = dictOfShape[id]!
        if sh is LTMLine {
            let cast = sh as! LTMLine
            cast.color = newcolor
            cast.thickness = newthickness
            cast.type = newtype
            dictOfShape[id] = cast
        }
    }
    
    func listAllShapes() {
        for (key, value) in dictOfShape {
            print("\(key): \(value)")
            value.printShape()
            print("")
        }
    }
    
    func listShape( atId:String ) {
        if let sh = dictOfShape[atId] {
            sh.printShape()
        }
    }
    
    var count:Int {
        return dictOfShape.count
    }
}
