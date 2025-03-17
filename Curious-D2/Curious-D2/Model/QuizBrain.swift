//
//  QuizBrain.swift
//  Curious-D2
//
//  Created by Marcelo Campos on 11/03/25.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(q: "Mickey Mouse was Walt Disney's first animated character.", a: "False"),
        Question(q: "The Evil Queen from Snow White and the Seven Dwarfs has a real name: Grimhilde.", a: "True"),
        Question(q: "Donald Duck has a twin sister named Della Duck.", a: "True"),
        Question(q: "Hercules is the only Disney prince who is a god.", a: "True"),
        Question(q: "Elsa and Anna from Frozen were originally planned to be unrelated characters.", a: "True"),
        Question(q: "Simba means 'king' in Swahili.", a: "False"),
        Question(q: "Mulan is the only Disney Princess who is based on a historical figure.", a: "True"),
        Question(q: "Pinocchio’s nose grows shorter when he tells a lie.", a: "False"),
        Question(q: "Dumbo is the only main Disney character who never speaks in his film.", a: "True"),
        Question(q: "In The Little Mermaid, Ariel’s father King Triton is the son of Poseidon.", a: "False"),
        Question(q: "Walt Disney World in Florida is larger than the city of San Francisco.", a: "True"),
        Question(q: "Disneyland was built in less than a year.", a: "False"),
        Question(q: "The 'It's a Small World' ride was originally created for the 1964 New York World's Fair.", a: "True"),
        Question(q: "There is an underground tunnel system beneath Magic Kingdom.", a: "True"),
        Question(q: "Cinderella Castle at Walt Disney World is made of real stone.", a: "False"),
        Question(q: "Tokyo Disneyland was the first Disney park built outside the U.S.", a: "True"),
        
        Question(q: "Walt Disney personally opened Walt Disney World.", a: "False"),
        Question(q: "The Haunted Mansion ride exists in multiple Disney Parks around the world.", a: "False"),
        Question(q: "The Hollywood Tower Hotel (Tower of Terror) is based on a real hotel.", a: "True"),
        Question(q: "Expedition Everest at Disney’s Animal Kingdom is the tallest attraction at Walt Disney World.", a: "False"),
        Question(q: "There is a secret exclusive club at Disneyland called Club 21.", a: "False"),
        Question(q: "The Cinderella Castle Suite in Walt Disney World is available for public booking.", a: "False"),
        Question(q: "The voice of Mickey Mouse and the voice of Minnie Mouse got married in real life.", a: "True"),
        Question(q: "All Disney Princesses must be born into royalty to be considered official princesses.", a: "False"),
        Question(q: "The Hitchhiking Ghosts in The Haunted Mansion have names: Ezra, Gus, and Phineas.", a: "True"),
        Question(q: "Space Mountain was the first roller coaster built at Walt Disney World.", a: "True"),
        Question(q: "Pirates of the Caribbean was one of Disneyland's opening-day attractions.", a: "False"),
        Question(q: "In Disneyland, the gas lamps on Main Street U.S.A. are real antique lamps.", a: "True"),
        Question(q: "No one is allowed to scatter ashes in Disney Parks.", a: "False"),
        Question(q: "There is a time capsule buried at Sleeping Beauty Castle in Disneyland.", a: "True"),
    ]
    
    var questionNumber = 0
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
    
    func getProgress() -> Float {
        let progress = Float(questionNumber) / Float(quiz.count)
        return progress
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
}
