//
//  Question.swift
//  PersonalityQuiz
//
//  Created by mac on 10/3/22.
//

import Foundation

struct Question
{
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType
{
    case single, multiple, ranged
}

struct Answer
{
    var text: String
    var type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶", cat = "🐱", rabbit = "🐰", turtle = "🐢"
    
    var definition: String
    {
        switch self
        {
        case .dog:
            return "You are smart"
        case .cat:
            return "You are not very smart."
        case .rabbit:
            return "Zander smells like cheesecake "
        case .turtle:
            return "jakob likes to eat vegetables for breakfast"
        }
    }
}

