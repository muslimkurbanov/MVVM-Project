//
//  ViewData.swift
//  MVVM-Project
//
//  Created by Муслим Курбанов on 09.11.2020.
//

import Foundation

enum ViewData {
    case intitial
    case loading(Data)
    case success(Data)
    case failure(Data)
    
    struct Data {
        let icon: String?
        let title: String?
        let description: String?
        let numberPhone: String?
    }
}
