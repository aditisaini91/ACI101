//
//  MinutesTests.swift
//  MinutesTests
//
//  Created by H231412 on 23.08.18.
//  Copyright © 2018 Microsoft. All rights reserved.
//

import XCTest
@testable import Minutes

class MinutesTests: XCTestCase {
    
    var  entryUnderTest : Entry!
    override func setUp() {
        super.setUp()
        entryUnderTest = Entry ("Title", "Content")
    }
    
    override func tearDown() {

        entryUnderTest = nil
        super.tearDown()
    }
    
    func testSearliazation ()  {
        let searilezedData = FileEntryStore.serialize(entryUnderTest)
        let entry = FileEntryStore.deserialize(searilezedData!)
        
        XCTAssertEqual(entry?.title, "Title", "Title does not match")
        XCTAssertEqual(entry?.content, "Content", "content does not match")

    }
    
    
}
