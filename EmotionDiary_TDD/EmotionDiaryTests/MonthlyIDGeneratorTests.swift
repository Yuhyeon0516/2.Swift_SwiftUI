//
//  MonthlyIDGeneratorTests.swift
//  EmotionDiaryTests
//
//  Created by Yuhyeon Kim on 2023/04/07.
//

import XCTest
@testable import EmotionDiary

final class MonthlyIDGeneratorTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    // test_<테스트대상>_<어떤동작>_<조건>
    func test_MIDGenerator_whenMIDrequested_withMoodDiary(){
        // Given
        let sut = MonthlyIDGenerator() // system under test
        let diary1 = MoodDiary(date: "2022-11-01 00:01:01", text: "My Diary", mood: .good)
        let diary2 = MoodDiary(date: "2022-12-01 00:01:01", text: "My Diary", mood: .good)
        let diary3 = MoodDiary(date: "2023-01-01 00:01:01", text: "My Diary", mood: .good)
        
        // When
        let id1 = sut.monthyID(with: diary1)
        let id2 = sut.monthyID(with: diary2)
        let id3 = sut.monthyID(with: diary3)
        
        // Then
        let expected1 = "2022-11"
        XCTAssertEqual(id1, expected1)
        
        let expected2 = "2022-12"
        XCTAssertEqual(id2, expected2)
        
        let expected3 = "2023-1"
        XCTAssertEqual(id3, expected3)
    }
    
    func test_MIDGenerator_whenMIDrequested_withInvalideDateMoodDiary() {
        // Given
        let sut = MonthlyIDGenerator() // system under test
        let diary1 = MoodDiary(date: "", text: "My Diary", mood: .good)
        
        // When
        let id1 = sut.monthyID(with: diary1)
        
        // Then
        let expected1 = ""
        XCTAssertEqual(id1, expected1)
    }
}
