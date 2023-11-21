import Foundation

enum Rps: Int {
    case rock = 1
    case sissors = 2
    case paper = 3
}

let userInput = [1,2,3]

func startGame() {
    print("가위(1), 바위(2), 보(3) ! <종료 : 0> :" )
    
    if let userInput = readLine(), let userChoice = Int(userInput) {
         
    } else {
        print("잘못된 입력입니다. 다시 시도해주세요")
    }
    
    

}
