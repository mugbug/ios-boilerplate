//
//  HorizontalListCell.swift
//  BoilerplateProject
//
//  Created by Pedro M. Zaroni on 26/07/20.
//  Copyright © 2020 mugbug. All rights reserved.
//

import UIKit
import ViewCodeHelper

final class HorizontalListCell: UICollectionViewCell {

    lazy var stackView = UIStackView()
        .. \.axis <- .vertical

    lazy var titleLabel = UILabel()
        .. \.font <- .systemFont(ofSize: 20)
        .. \.text <- "Header"
        .. \.textColor <- .white

    lazy var listView = GenericListView<UICollectionViewCell>(
        scrollDirection: .horizontal,
        color: .orange
    )

    override init(frame: CGRect) {
        super.init(frame: frame)
        buildView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension HorizontalListCell: ViewCodeProtocol {
    func setupHierarchy() {
        contentView.addSubviewWithConstraints(subview: stackView)
        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(listView)
    }

    func setupConstraints() { }
}
