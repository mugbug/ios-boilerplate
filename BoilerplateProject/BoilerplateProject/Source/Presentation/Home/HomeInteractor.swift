//
//  HomeInteractor.swift
//  BoilerplateProject
//
//  Created by Pedro M. Zaroni on 25/05/20.
//  Copyright © 2020 mugbug. All rights reserved.
//

protocol HomeInteractorProtocol {

}

protocol HomePresenterDelegate: AnyObject {

}

final class HomeInteractor: HomeInteractorProtocol {

    weak var presenter: HomePresenterDelegate?
}
