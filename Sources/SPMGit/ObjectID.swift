/*
 This source file is part of the Swift.org open source project

 Copyright (c) 2018 Apple Inc. and the Swift project authors
 Licensed under Apache License v2.0 with Runtime Library Exception

 See http://swift.org/LICENSE.txt for license information
 See http://swift.org/CONTRIBUTORS.txt for Swift project authors
 */

import clibc
import Basic
import Foundation

public final class ObjectID {
    internal let oid: git_oid
    
    public var hexadecimalRepresentation: String {
        var oid = self.oid
        return String(cString: git_oid_tostr_s(&oid))
    }

    internal init(oid: git_oid) {
        self.oid = oid
    }
}

extension ObjectID: CustomStringConvertible {
    public var description: String {
        return hexadecimalRepresentation
    }
}
