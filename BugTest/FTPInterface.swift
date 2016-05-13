//
//  FTPInterface.swift
//  BugTest
//
//  Created by Stein, Jeff on 5/12/16.
//  Copyright © 2016 Jeff. All rights reserved.
//

import Foundation
import NMSSH

/**
 SFTP Data Transfer Provider is a way of getting SFTP Data
 */
public class SFTPFileDataProvider {
    
    private var privateKeyPath: String?
    private var publicKeyPath: String?
    private let keyPassword = ""
    private let userName: String
    private let host: String
    private let port: Int
    
    /**
     Initializes a new SFTP Connection with host and (optional) port
     
     - parameter host: hostname of SFTP server
     - parameter port: _OPTIONAL_ defaults to 22
     */
    init(host: String, port: Int = 22, userName: String) {
        self.userName = userName
        self.host = host
        self.port = port
    }
    
    
    /**
     Returns a NMSFTP session with the configured data elements
     
     - returns: a session that is hopefully connected
     */
     func ftpSession() -> NMSFTP {
        let c = NMSSHSession.connectToHost(self.host, port: self.port, withUsername: self.userName)
        c.authenticateByPassword("password")
        return NMSFTP.connectWithSession(c)
    }
    
    public static func test() {
        testFTP()
    }
}


class TMonkey {
    func test() {
        testFTP()
    }
}


func testFTP() {
    
    let sftp: NMSFTP = SFTPFileDataProvider(host: "test.rebex.net:22", userName: "demo").ftpSession()
    
    for f in sftp.contentsOfDirectoryAtPath("/") {
        print (f)
    }
    
}
