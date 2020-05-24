//
//  HomeView.swift
//  BoilerplateProject
//
//  Created by Pedro M. Zaroni on 23/05/20.
//  Copyright © 2020 mugbug. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello, World!")
                NavigationLink(
                    destination: EmptyView(),
                    label: { Text("Push some page") }
                )
            }
        }
    }

    static func asViewController() -> UIViewController {
        return UIHostingController(rootView: HomeView())
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
