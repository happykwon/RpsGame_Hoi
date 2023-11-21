import Foundation

enum Rps: Int {
    case rock = 1
    case sissors = 2
    case paper = 3
}


func startGame() {
    print("가위(1), 바위(2), 보(3) ! <종료 : 0> :" )
    
    guard let Input = readLine(), let userChoice = Int(Input) else {
        print("잘못된 입력입니다. 다시 시도해주세요")
        startGame()
        return
    }
    
    if userChoice == 0 {
        print("게임을 종료합니다.")
    } else if userChoice < 1 || userChoice > 3  {
        print("잘못된 입력입니다. 다시 시도해주세요")
    }
    
    var computerChoice = Int.random(in: 1...3)
    
    if userChoice == computerChoice {
        print("비겼습니다!")
        startGame()
    } else if
        (userChoice == 1 && computerChoice == 3) ||
        (userChoice == 2 && computerChoice == 1) ||
        (userChoice == 3 && computerChoice == 1) {
        print("이겼습니다!")
    } else {
        print("졌습니다.")
    }
    
}

startGame()


