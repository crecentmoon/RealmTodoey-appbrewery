//
//  Category.swift
//  Todoey
//
//  Created by 月岡　悠 on 2020/03/04.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var colour: String = ""
    //let array = [1, 2, 3]の配列の中身の型はType Inferenceだがarray = [Int]()ともいえるしarray: [Int] = [1, 2, 3]ともいえる
    //さらに、let array: Array<Int> = [1, 2, 3]ということもできる　let array = Array<Int>()
    let items = List<Item>()
}
