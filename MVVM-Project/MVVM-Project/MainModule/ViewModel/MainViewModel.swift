//
//  MainViewModel.swift
//  MVVM-Project
//
//  Created by Муслим Курбанов on 09.11.2020.
//

import Foundation

protocol MainViewModelProtocol {
    var updateViewData: ((ViewData) -> ())? { get set }
    func startFetch()
    func error()
}

final class MainViewModel: MainViewModelProtocol {
    public var updateViewData: ((ViewData) -> ())?
    
    init() {
        updateViewData?(.intitial)
    }
    
    public func error() {
        self.updateViewData?(.failure(ViewData.Data(icon: "failure", title: "error", description: "not user", numberPhone: nil)))
    }
    
    public func startFetch() {
        // start loading
//        updateViewData?(.loading(ViewData.Data(icon: nil, title: nil, description: nil, numberPhone: nil)))
        
        self.updateViewData?(.success(ViewData.Data(icon: "success", title: "Success", description: "Good", numberPhone: nil)))
        
//        DispatchQueue.main.asyncAfter(deadline: .now() + 3) { [weak self] in
//            self?.updateViewData?(.success(ViewData.Data(icon: "success", title: "Success", description: "Good", numberPhone: nil)))
//        }
//
//        DispatchQueue.main.asyncAfter(deadline: .now() + 6) { [weak self] in
//            self?.updateViewData?(.failure(ViewData.Data(icon: "failure", title: "error", description: "not user", numberPhone: nil)))
//        }
    }
    
    
}
