//  ToDoListModel.swift
//  My to do list
//
//  Created by rezra on 25.06.2022.

import Foundation

//MARK: - Propeties

var ToDoItems: [[String: Any]] = [["name": "Встретится с Зарифой", "isCompleted": false], ["name": "Позвонить Маме с Папой", "isCompleted": true],["name": "Написать приложение", "isCompleted": false], ["name": "Отметить выполненные задания", "isCompleted": false]]
 
//MARK: - Methods

func addItems(nameItem: String, isCompleted: Bool = false) {
    ToDoItems.append(["Name": nameItem, "isCompleted": false])
    saveData()
}
 
func removeItem(at index: Int) {
    ToDoItems.remove(at: index)
    saveData()
}

func changeStateAddItem(at item: Int) -> Bool {
    ToDoItems[item]["isCompleted"] = !(ToDoItems[item]["isCompleted"] as! Bool)
    saveData()
    return ToDoItems[item]["isCompleted"] as! Bool
}
 

func saveData() {
    print("Сохраняем данные")
} 

func loadData() {
    
}
