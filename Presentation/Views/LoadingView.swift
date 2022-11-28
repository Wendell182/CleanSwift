//
//  LoadingView.swift
//  Presentation
//
//  Created by Wendell Claus on 28/11/22.
//

import Foundation

public protocol LoadingView {
    func display(viewModel: LoadingViewModel)
}

public struct LoadingViewModel: Equatable {
    public var isLoading: Bool

    public init(isLoading: Bool) {
        self.isLoading = isLoading
    }
}
