//
//  BugTestTests.swift
//  BugTestTests
//
//  Created by Stein, Jeff on 5/12/16.
//  Copyright © 2016 Jeff. All rights reserved.
//

import XCTest
@testable import BugTest

class BugTestTests: XCTestCase {
    
    
    // UNCOMMENT TO HAVE A BUILD FAILURE
//    func testCompileIssue() {
//        let sftp = SFTPFileDataProvider(host: "test.rebex.net:22", userName: "demo")
//    }
//    
    
    // UNCOMMENT TO HAVE A BUILD FAILURE
//    func testStatic() {
//        SFTPFileDataProvider.test()
//    }

    // WILL COMPILE
    func test2Good() {
        
        let t = TMonkey()
        t.test()
    }
}
