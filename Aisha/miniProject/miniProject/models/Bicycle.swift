//
//  File.swift
//  miniProject
//
//  Created by MacBook` on 04/01/2021.
//

import Foundation

struct Bicycle: Identifiable {
    let bicycle: String
    
    let id = UUID()
}

let bicycles = [
  Bicycle(bicycle: "1"),
  Bicycle(bicycle: "2"),
  Bicycle(bicycle: "3"),
  Bicycle(bicycle: "4"),
  Bicycle(bicycle: "5"),
  Bicycle(bicycle: "6"),
  Bicycle(bicycle: "7")    
]
