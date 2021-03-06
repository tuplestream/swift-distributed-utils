/*
 Copyright 2020 TupleStream OÜ

 See the LICENSE file for license information
 SPDX-License-Identifier: Apache-2.0
*/
import Foundation
import Logging

// MARK: Common network objects
public struct HostAndPort: Codable, CustomStringConvertible, Equatable, Hashable {

    public enum HostInitializationError: Error {
        case invalidPort(port: Int)
    }

    public let host: String
    public let port: Int

    public var description: String {
        return "[\(host):\(port)]"
    }

    public init(host: String, port: Int = -1) throws {
        self.host = host
        self.port = port
        try HostAndPort.checkValidPort(port)
    }

    static func checkValidPort(_ port: Int) throws {
        if port <= 0 || port >= 65535 {
            throw HostInitializationError.invalidPort(port: port)
        }
    }
}

// MARK: Time source utilities
public protocol TimeSource {

    var unixTimeMillis: Double { get }
}

public final class SystemTimeSource: TimeSource {

    public static let instance = SystemTimeSource()

    public var unixTimeMillis: Double {
        get {
            return Date().timeIntervalSince1970 * 1000
        }
    }
}

public final class MockTimeSource: TimeSource {

    public var time: Double

    public init() {
        time = 0.0
    }

    public var unixTimeMillis: Double {
        get {
            return time
        }
    }
}

// MARK: Search routines
final class Search {

    public static func binarySearchOrNextHighest<T: StableHashable, U: StableHashable>(array: Array<T>, target: U, bestSoFar: T? = nil) -> T? {
        if array.isEmpty {
            return nil
        } else if array.count == 1 {
            return array[0]
        }

        let midPoint = array.count / 2

        if array[midPoint].identity > target.identity {
            if let closest = bestSoFar {
                if array[midPoint].identity > closest.identity {
                    return bestSoFar
                }
            }
            return binarySearchOrNextHighest(array: Array(array[..<midPoint]), target: target, bestSoFar: array[midPoint])
        } else {
            return binarySearchOrNextHighest(array: Array(array[midPoint...]), target: target)
        }
    }
}
