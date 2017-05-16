//
//  main.swift
//  LTMFlyWeightTP
//

import Foundation

var p1 = LTMPoint( x:0.0, y:0.0 )
var p2 = LTMPoint( x:0.0, y:2.0 )
var p3 = LTMPoint( x:1.0, y:0.0 )
var p4 = LTMPoint( x:1.1, y:2.1 )
var p5 = LTMPoint( x:2.3, y:5.6 )
var p6 = LTMPoint( x:1.4, y:0.7 )

var blueprint = LTMBluePrint()

print("taille du blueprint (sans shape) = \(blueprint.size)")
print("Ajout de shapes")
blueprint.addShape(shape: LTMLine( id:"key1", from: p1, to: p2, color: .green, thickness: 2.0, type: .discontinuous) )
blueprint.addShape(shape: LTMLine( id:"key2", from: p3, to: p4, color: .black, thickness: 1.0, type: .continuous) )
blueprint.addShape(shape: LTMLine( id:"key3", from: p5, to: p6, color: .black, thickness: 1.0, type: .continuous) )
blueprint.addShape(shape: LTMLine( id:"key4", from: p2, to: p3, color: .green, thickness: 1.0, type: .continuous) )
blueprint.addShape(shape: LTMLine( id:"key5", from: p1, to: p3, color: .black, thickness: 1.0, type: .continuous) )
blueprint.addShape(shape: LTMLine( id:"key6", from: p1, to: p6, color: .black, thickness: 1.0, type: .continuous) )

blueprint.addShape(shape: LTMLine( id:"key7", from: p1, to: p4, color: .blue, thickness: 2.0, type: .discontinuous) )
blueprint.addShape(shape: LTMLine( id:"key8", from: p2, to: p6, color: .black, thickness: 1.0, type: .continuous) )
blueprint.addShape(shape: LTMLine( id:"key9", from: p6, to: p2, color: .black, thickness: 1.0, type: .continuous) )
blueprint.addShape(shape: LTMLine( id:"key10", from: p2, to: p3, color: .green, thickness: 1.0, type: .discontinuous) )
blueprint.addShape(shape: LTMLine( id:"key11", from: p1, to: p3, color: .black, thickness: 1.0, type: .continuous) )
blueprint.addShape(shape: LTMLine( id:"key12", from: p1, to: p6, color: .black, thickness: 1.0, type: .continuous) )

blueprint.addShape(shape: LTMCircle( id:"key13", center: p3, radius: 30.0, color: .black, thickness: 1.0, type: .continuous) )
blueprint.addShape(shape: LTMCircle( id:"key14", center: p5, radius: 35.0, color: .black, thickness: 1.0, type: .continuous) )
blueprint.addShape(shape: LTMCircle( id:"key15", center: p2, radius: 10.0, color: .green, thickness: 1.0, type: .continuous) )
blueprint.addShape(shape: LTMCircle( id:"key16", center: p1, radius: 11.0, color: .black, thickness: 1.0, type: .continuous) )

print("taille du blueprint = \(blueprint.size), nombre de shapes = \(blueprint.count)")

blueprint.listAllShapes()

print("On modifie un shape")
blueprint.modifyShape(id:"key2", newcolor: .red, newthickness: 10.0, newtype: .discontinuous)
blueprint.listShape(atId: "key2")


