//
//  GenericListView.swift
//  BoilerplateViews
//
//  Created by Pedro M. Zaroni on 26/07/20.
//  Copyright © 2020 mugbug. All rights reserved.
//

import UIKit
import ViewCodeHelper

extension UICollectionViewCell: Identifiable {}

public final class GenericListView: UIView {

    // MARK: Configuration

    var scrollDirection: UICollectionView.ScrollDirection = .vertical
    private lazy var dataSource = VerticalListDataSource()

    // MARK: Views

    lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(
            frame: .zero,
            collectionViewLayout: flowLayout()
        )
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.register(UICollectionViewCell.self)
        collectionView.dataSource = dataSource
        collectionView.delegate = self
        return collectionView
    }()

    private func flowLayout() -> UICollectionViewFlowLayout {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = scrollDirection
        return layout
    }

    // MARK: Initialization

    public init() {
        super.init(frame: .zero)
        buildView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension GenericListView: UICollectionViewDelegateFlowLayout {
    public func collectionView(_ collectionView: UICollectionView,
                               layout collectionViewLayout: UICollectionViewLayout,
                               sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: frame.width, height: 100)
    }
}

// MARK: ViewCodeProtocol

extension GenericListView: ViewCodeProtocol {
    public func setupHierarchy() {
        addSubviewWithConstraints(subview: collectionView)
    }

    public func setupConstraints() { }
}
