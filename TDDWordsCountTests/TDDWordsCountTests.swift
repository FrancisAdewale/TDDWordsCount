//
//  TDDWordsCountTests.swift
//  TDDWordsCountTests
//
//  Created by Francis Adewale on 05/05/2021.
//

import XCTest
@testable import TDDWordsCount

class TDDWordsCountTests: XCTestCase {
    
    var sut: ViewController!

    override func setUp()  {
        super.setUp()
        sut = ViewController()
    }

    
    override func tearDown() {
        sut = nil
        super.tearDown()
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }


    func test_returnsEmptyDataStruct()  {
        
        //given
        
        sut.string = ""
        
        //when
        
        let emptyData = sut.returnEmptyDataStruct(in: sut.string!)
        
        //then
        
        XCTAssertTrue(emptyData.count == 0)
        
        
    }
    
    func test_returnStructWithData() {
        
        
        //given
        
        sut.string = "Hello"
        
        //when
        
        let data = sut.returnOneWordCount(in: sut.string!)
        
        //then
        
        XCTAssertTrue(data.count == 1)
        
    }
    

}
