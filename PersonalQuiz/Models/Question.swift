//
//  Question.swift
//  PersonalQuiz
//
//  Created by Alexey Efimov on 12.02.2024.
//

struct Question {
    let title: String
    let answers: [Answer]
    let answerCategory: AnswerCategory
    
    static func getQuestions() -> [Question] {
        [
            Question(
                title: "Какую пищу вы предпочитаете?",
                answers: [
                    Answer(title: "Стейк", animal: .dog),
                    Answer(title: "Рыба", animal: .cat),
                    Answer(title: "Морьковь", animal: .rabbit),
                    Answer(title: "Кукуруза", animal: .turtle)
                ],
                answerCategory: .single
            ),
            Question(
                title: "Что вам нравится больше?",
                answers: [
                    Answer(title: "Плавать", animal: .dog),
                    Answer(title: "Спать", animal: .cat),
                    Answer(title: "Обниматься", animal: .rabbit),
                    Answer(title: "Есть", animal: .turtle)
                ],
                answerCategory: .multiple
            ),
            Question(
                title: "Любите ли вы ездить на машине?",
                answers: [
                    Answer(title: "Ненавижу", animal: .cat),
                    Answer(title: "Нервничаю", animal: .rabbit),
                    Answer(title: "Не замечаню", animal: .turtle),
                    Answer(title: "Обожаю", animal: .dog)
                ],
                answerCategory: .ranged
            )
        ]
    }
}

struct Answer {
    let title: String
    let animal: Animal
}

enum AnswerCategory {
    case single
    case multiple
    case ranged
}

enum Animal: Character {
    case dog = "🐶"
    case cat = "🐱"
    case turtle = "🐢"
    case rabbit = "🐰"
    
    var definition: String {
        switch self {
        case .dog:
            return "Вам нравится быть с друзьями. Вы окружаете себя людьми, которые вам нравятся и всегда готовы помочь."
        case .cat:
            return "Вы себе на уме. Любите гулять сами по себе. Вы цените одиночество."
        case .rabbit:
            return "Вам нравится все мягкое. Вы здоровы и полны энергии."
        case .turtle:
            return "Ваша сила - в мудрости. Медленный и вдумчивый выигрывает на больших дистанциях."
        }
    }
}
