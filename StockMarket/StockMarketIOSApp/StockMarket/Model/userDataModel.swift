//
//  userDataModel.swift
//  StockMarket
//
//  Created by Sakthivel Balakrishnan on 22/03/19.
//  Copyright © 2019 Sakthivel Balakrishnan. All rights reserved.
//

import Foundation

struct stock:Decodable{
    let _id:String
    let name:String
    let cpnPercentage:Float
    let currentCpn:Int
    let totalCpn:Int
    let currency:String
    let currentValue:Float
    let yeildPercentage:Float
    let change:Float
    let basePoint:Int
}

struct userDataModel:Decodable{
    let _id:String
    let totalValue:Double
    let currency:String
    let totalChange:Double
    let stocks:[stock]
}
