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

var students = [StudentInfo]()

func main() {
    while true {
        print("원하는 기능을 입력해주세요")
        print("1: 학생추가, 2: 학생삭제, 3: 성적추가(변경), 4: 성적삭제, 5: 평점보기, X: 종료")
        let input = readLine()
        if let input = input {
            switch input {
            case "1":
                print("추가할 학생의 이름을 입력해주세요")
                let input = readLine()
                if let input = input {
                    if input.isEmpty {
                        print("입력이 잘못되었습니다. 다시 확인해주세요.")
                    } else {
                        addStudent(input)
                    }
                } else {
                    print("입력이 잘못되었습니다. 다시 확인해주세요.")
                }
            case "2":
                print("삭제할 학생의 이름을 입력해주세요")
                let input = readLine()
                if let input = input {
                    if input.isEmpty {
                        print("입력이 잘못되었습니다. 다시 확인해주세요.")
                    } else {
                        removeStudent(input)
                    }
                } else {
                    print("입력이 잘못되었습니다. 다시 확인해주세요.")
                }
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

func addStudent(_ name: String) {
    if findStudent(name) == -1 {
        students.append(StudentInfo(name: name, gradeInfo: []))
        print("\(name) 학생을 추가했습니다.")
    } else {
        print("\(name) 학생은 이미 존재하는 학생입니다. 추가하지 않습니다.")
    }
}

func findStudent(_ name: String) -> Int {
    for (index, student) in students.enumerated() {
        if student.name == name {
            return index
        }
    }
    return -1
}

func removeStudent(_ name: String) {
    let index = findStudent(name)
    if index != -1 {
        students.remove(at: index)
        print("\(name) 학생을 삭제하였습니다.")
    } else {
        print("\(name) 학생을 찾지 못했습니다.")
    }
}

main()
