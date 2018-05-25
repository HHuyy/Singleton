//
//  DataService.swift
//  Singleton
//
//  Created by tham gia huy on 5/14/18.
//  Copyright © 2018 tham gia huy. All rights reserved.
//

import Foundation

class DataService {
    static let share: DataService = DataService()
    private var _arraynumber: [Int]?
    var arrayNumber: [Int] {
        get {
            if _arraynumber == nil {
                getdata()
            }
            return _arraynumber ?? []
        }
        set {
            _arraynumber = newValue
        }
    }
    func getdata() {
        _arraynumber = []
        _arraynumber = [1, 2, 3, 4]
    }
    func addNew(from data: Int) {
        _arraynumber?.append(data)
    }
    func removeData(at index: Int) {
        _arraynumber?.remove(at: index)
    }
}
