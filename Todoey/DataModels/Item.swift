//
//  Item.swift
//  Todoey
//
//  Created by 月岡　悠 on 2020/03/04.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    //Declatation Modifyer ランタイムにスタンダードのスタティックディスパッチではなくダイナミックディスパッチを使いプロパティ名が動的にモニターされる
    //つまりRealmが変更されたデータベースを動的にアップデートできる　DynamicDispatchはObjectiveC由来なのでマークする必要がある？？今はなくてもいいのか？
    @objc dynamic var title: String = ""
    @objc dynamic var done: Bool = false
    @objc dynamic var dateCreated: Date?
    //Categoryはクラスなので.selfとつけることによって型となる propertyは親リレーションの名前
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}












