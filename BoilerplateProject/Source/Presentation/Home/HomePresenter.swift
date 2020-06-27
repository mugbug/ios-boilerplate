//
//  HomePresenter.swift
//  BoilerplateProject
//
//  Created by Pedro M. Zaroni on 25/05/20.
//  Copyright © 2020 mugbug. All rights reserved.
//

protocol HomeRouterProtocol {

}
protocol HomeViewDelegate: AnyObject {

}

protocol HomePresenterProtocol {

}

final class HomePresenter {

    weak var view: HomeViewDelegate?
    private let router: HomeRouterProtocol
    private let interactor: HomeInteractorProtocol

    init(router: HomeRouterProtocol, interactor: HomeInteractorProtocol) {
        self.router = router
        self.interactor = interactor
    }
}

extension HomePresenter: HomePresenterProtocol {}

extension HomePresenter: HomePresenterDelegate {}
