//
//  Array2d.swift
//  Tetris
//
//  Created by Randall Kanna on 11/18/15.
//  Copyright (c) 2015 Randall Kanna. All rights reserved.
//

class Array2D<T> { // typed parameter <T>. Allows array to store any data type
    let columns: Int
    let rows: Int
    
    // declare the swift array. 
    // Declared with type <T?> ? is optional value
    var array: Array<T?>
    
    // in init, we create our array with rows * columns
    init(columns: Int, rows: Int) {
        self.columns = columns
        self.rows = rows
        array = Array<T?>(count: rows * columns, repeatedValue: nil)
    }
    
    subscript(column: Int, row: Int) -> T? {
        // multiply row by column and add column number to find the spot on the board
        get {
            return array[(row * columns) + column]
        }
        
        // set newvalue to the location found
        set(newValue) {
            array[(row * columns) + column] = newValue
        }
    }
}