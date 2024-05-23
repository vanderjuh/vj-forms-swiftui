//
//  RadioButtonData.swift
//  vj-forms
//
//  Created by Vanderley Junior on 22/05/24.
//

import Foundation

struct RadioButtonData {
    var questionTitle: String
    let questionOptions: [RadioButtonOption]
    
    static func mock() -> RadioButtonData {
        return RadioButtonData(
            questionTitle: "This is an example of question title",
            questionOptions: [
                RadioButtonOption(id: "1", label: "Text 1"),
                RadioButtonOption(id: "2", label: "Text 2"),
                RadioButtonOption(id: "3", label: "Text 3")
            ])
    }
}

struct RadioButtonOption : Identifiable, Hashable {
    let id: String
    let label: String
}
