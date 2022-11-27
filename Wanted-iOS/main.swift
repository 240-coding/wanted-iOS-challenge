//
//  main.swift
//  Wanted-iOS
//
//  Created by 이서영 on 2022/11/28.
//

import Foundation

struct StudentInfo {
    var name: String
    var gradeInfo: [GradeInfo]
}

struct GradeInfo {
    var subject: String
    var grade: String
}

let grade = ["A+": 4.5, "A": 4, "B+": 3.5, "B": 3, "C+": 2.5, "C": 2, "D+": 1.5, "D": 1, "F": 0]

func main() {
    while true {
        print("원하는 기능을 입력해주세요")
        print("1: 할생추가, 2: 학생삭제, 3: 성적추가(변경), 4: 성적삭제, 5: 평점보기, X: 종료")
        let input = readLine()
        if let input = input {
            switch input {
            case "1":
                // 학생 추가
                print("학생 추가")
            case "2":
                // 학생 삭제
                print("학생 추가")

            case "3":
                // 성적추가(변경)
                print("학생 추가")

            case "4":
                // 성적 삭제
                print("학생 추가")

            case "5":
                // 평점 보기
                print("학생 추가")

            case "X":
                // 종료
                return
            default:
                print("뭔가 입력이 잘못되었습니다. 1~5 사이의 숫자 혹은 X를 입력해주세요.")
            }
        } else {
            print("뭔가 입력이 잘못되었습니다. 1~5 사이의 숫자 혹은 X를 입력해주세요.")
        }
    }

}

main()
