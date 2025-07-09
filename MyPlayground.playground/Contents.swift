
//Don't change this
//var studentsAndScores = ["Amy": Int(readLine()!)!, "James": Int(readLine()!)!, "Helen": Int(readLine()!)!]

func highestScore(scores: [String: Int]) {
  
  //Write your code here.
    var highestScore: Int = 0
    
    for student in scores {
        if student.value > highestScore && student.value != nil {
            highestScore = student.value
        }
    }
    
    print(highestScore)
  
}

//Try some different scores.
//Dont add the lines below to udemy!
highestScore(
    scores: [
        "Amy": 88,
        "James": 55,
        "Helen": 99
    ]
)
