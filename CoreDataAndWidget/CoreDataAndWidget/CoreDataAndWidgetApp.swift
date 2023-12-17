//
//  CoreDataAndWidgetApp.swift
//  CoreDataAndWidget
//
//  Created by koala panda on 2023/09/28.
//

import SwiftUI

@main
//アプリ内でCoreData使用できるようにオブジェクトコンテキストの管理を環境変数として渡す
struct CoreDataAndWidgetApp: App {
    var body: some Scene {
        //コンテンツビューの直後のウィンドウグループ内で、そこからオブジェクトコンテキストを管理できるようになる
        let managedContext = CoreDataManager.shared.managedObjectContext
        WindowGroup {
            //作成されたすべてのサブビューにオブジェクト管理コンテキストを直接渡す
            GroceryView()
                .environment(\.managedObjectContext, managedContext)
        }
    }
}
