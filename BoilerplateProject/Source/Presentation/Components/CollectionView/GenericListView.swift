//
//  GenericListView.swift
//  BoilerplateViews
//
//  Created by Pedro M. Zaroni on 26/07/20.
//  Copyright © 2020 mugbug. All rights reserved.
//

import UIKit
import ViewCodeHelper

extension UICollectionViewCell: Reusable {}

final class GenericListView<CellType: UICollectionViewCell>: UIView, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {

    // MARK: Configuration

    var scrollDirection: UICollectionView.ScrollDirection
    var color: UIColor
//    private lazy var dataSource = VerticalListDataSource<CellType>(color: color)

    // MARK: Views

    lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(
            frame: .zero,
            collectionViewLayout: flowLayout()
        )
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.register(CellType.self)
        collectionView.dataSource = self
        collectionView.delegate = self
        return collectionView
    }()

    private func flowLayout() -> UICollectionViewFlowLayout {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = scrollDirection
        return layout
    }

    // MARK: Initialization

    public init(scrollDirection: UICollectionView.ScrollDirection,
                color: UIColor) {
        self.scrollDirection = scrollDirection
        self.color = color
        super.init(frame: .zero)
        buildView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func collectionView(_ collectionView: UICollectionView,
                               layout collectionViewLayout: UICollectionViewLayout,
                               sizeForItemAt indexPath: IndexPath) -> CGSize {
        var width = frame.width
        var height: CGFloat = 150
        if scrollDirection == .horizontal {
            width /= 4
            height = frame.height
        }
        return CGSize(width: width, height: height)
    }

    var numberOfItemsInSection = 10
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

// MARK: ViewCodeProtocol

extension GenericListView: ViewCodeProtocol {
    public func setupHierarchy() {
        addSubviewWithConstraints(subview: collectionView)
    }

    public func setupConstraints() { }
}
