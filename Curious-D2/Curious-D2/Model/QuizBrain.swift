//
//  QuizBrain.swift
//  Curious-D2
//
//  Created by Marcelo Campos on 11/03/25.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(q: "00Mickey Mouse was Walt Disney's first animated character.", a: "False"),
        Question(q: "01The Evil Queen from Snow White and the Seven Dwarfs has a real name: Grimhilde.", a: "True"),
        Question(q: "02Donald Duck has a twin sister named Della Duck.", a: "True"),
        Question(q: "03Hercules is the only Disney prince who is a god.", a: "True"),
        Question(q: "04Elsa and Anna from Frozen were originally planned to be unrelated characters.", a: "True"),
        Question(q: "05Simba means 'king' in Swahili.", a: "False"),
        Question(q: "06Mulan is the only Disney Princess who is based on a historical figure.", a: "True"),
        Question(q: "07Pinocchio’s nose grows shorter when he tells a lie.", a: "False"),
        Question(q: "08Dumbo is the only main Disney character who never speaks in his film.", a: "True"),
        Question(q: "09In The Little Mermaid, Ariel’s father King Triton is the son of Poseidon.", a: "False"),
        Question(q: "10Walt Disney World in Florida is larger than the city of San Francisco.", a: "True"),
        Question(q: "11Disneyland was built in less than a year.", a: "False"),
        Question(q: "12The 'It's a Small World' ride was originally created for the 1964 New York World's Fair.", a: "True"),
        Question(q: "13There is an underground tunnel system beneath Magic Kingdom.", a: "True"),
        Question(q: "14Cinderella Castle at Walt Disney World is made of real stone.", a: "False"),
        Question(q: "15Tokyo Disneyland was the first Disney park built outside the U.S.", a: "True"),
        Question(q: "16Walt Disney personally opened Walt Disney World.", a: "False"),
        Question(q: "17The Haunted Mansion ride exists in multiple Disney Parks around the world.", a: "False"),
        Question(q: "18The Hollywood Tower Hotel (Tower of Terror) is based on a real hotel.", a: "True"),
        Question(q: "19Expedition Everest at Disney’s Animal Kingdom is the tallest attraction at Walt Disney World.", a: "False"),
        Question(q: "20There is a secret exclusive club at Disneyland called Club 21.", a: "False"),
        Question(q: "21The Cinderella Castle Suite in Walt Disney World is available for public booking.", a: "False"),
        Question(q: "22The voice of Mickey Mouse and the voice of Minnie Mouse got married in real life.", a: "True"),
        Question(q: "23All Disney Princesses must be born into royalty to be considered official princesses.", a: "False"),
        Question(q: "24The Hitchhiking Ghosts in The Haunted Mansion have names: Ezra, Gus, and Phineas.", a: "True"),
        Question(q: "25Space Mountain was the first roller coaster built at Walt Disney World.", a: "True"),
        Question(q: "26Pirates of the Caribbean was one of Disneyland's opening-day attractions.", a: "False"),
        Question(q: "27In Disneyland, the gas lamps on Main Street U.S.A. are real antique lamps.", a: "True"),
        Question(q: "28No one is allowed to scatter ashes in Disney Parks.", a: "False"),
        Question(q: "29There is a time capsule buried at Sleeping Beauty Castle in Disneyland.", a: "True"),
    ]
    
    //var numberOfQuestions = 5 //possivelmente ele pode contar automaticamente quantas questões eu tenho na variável 'quiz.count'
    var arrayNumeric = [Int]()
    var questionNumber = 0
    var deleteQuestionNumber = 0
    var quantQuestion = 30
    var progressBar = 1
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getScore() -> Int {
        return score
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    mutating func getProgress() -> Float {
        let progress = Float(progressBar) / Float(quiz.count)
        progressBar += 1
        return progress
    }
    
    mutating func nextQuestion() {
        if arrayNumeric.isEmpty {
            arrayNumeric = [Int](0..<quiz.count)
            progressBar = 1
            score = 0
        }
            questionNumber = arrayNumeric.randomElement() ?? 0
            print("Questão Selecionada: \(questionNumber) - \(quiz[questionNumber].text)")
            print("Deletadas: \(deleteQuestionNumber)")
            print("Itens Array: \(quantQuestion)")
            print("------------------------------------------------------")
            
            arrayNumeric.removeAll {$0 == questionNumber}
            deleteQuestionNumber += 1
            quantQuestion = arrayNumeric.count
            
            print(arrayNumeric)
            print("Deletadas 2: \(deleteQuestionNumber)")
            print("Itens Array 2: \(quantQuestion)")
            print("------------------------------------------------------")
            
            //O Código leu primeiro esse 5 e depois entrou no IF acima
            //questionNumber = arrayNumeric.randomElement() ?? 5
            //print("Prox Questão: \(questionNumber) - \(quiz[questionNumber].text)")
            //print("************** End ****************\n\n")
            
        
        /*if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }*/
        
    }
    
}
