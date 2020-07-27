//
//  VerticalListDataSource.swift
//  BoilerplateProject
//
//  Created by Pedro M. Zaroni on 26/07/20.
//  Copyright © 2020 mugbug. All rights reserved.
//

import UIKit
import ViewCodeHelper

final class VerticalListDataSource<CellType: UICollectionViewCell>: NSObject, UICollectionViewDataSource {

    var color: UIColor

    init(color: UIColor) {
        self.color = color
    }

    var numberOfItemsInSection = 30
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return numberOfItemsInSection
    }

    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: CellType = collectionView.dequeueReusableCell(for: indexPath)
        cell.backgroundColor = color
        return cell
    }
}
