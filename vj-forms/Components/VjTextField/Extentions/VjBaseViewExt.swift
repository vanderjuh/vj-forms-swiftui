//
//  VjBaseView.swift
//  vj-forms
//
//  Created by Vanderley Junior on 19/05/24.
//

import Foundation
import SwiftUI

extension View {
    private var keyboardShowPublisher = NotificationCenter.Publisher(center: .default, name: UIResponder.keyboardWillShowNotification)
    
    private var keyboardHidePublisher = NotificationCenter.Publisher(center: .default, name: UIResponder.keyboardWillHideNotification)
    
    
}
