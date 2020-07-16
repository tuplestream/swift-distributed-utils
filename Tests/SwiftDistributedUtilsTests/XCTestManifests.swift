#if !canImport(ObjectiveC)
import XCTest

extension BloomFilterTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__BloomFilterTests = [
        ("testAddSingleItem", testAddSingleItem),
        ("testInitSIMDFilter", testInitSIMDFilter),
    ]
}

extension CommonTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__CommonTests = [
        ("testInvalidPort", testInvalidPort),
        ("testValidPort", testValidPort),
    ]
}

extension HashingTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__HashingTests = [
        ("testAddSingleItem", testAddSingleItem),
        ("testMurmurBasicCases", testMurmurBasicCases),
        ("testMurmurCollision", testMurmurCollision),
        ("testXXHashBasicCases", testXXHashBasicCases),
        ("testXXHashEmptyInput", testXXHashEmptyInput),
        ("testXXHashLargeInput", testXXHashLargeInput),
    ]
}

extension MembershipTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__MembershipTests = [
        ("testSpinUpMDNSTracker", testSpinUpMDNSTracker),
    ]
}

extension StatemachineTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__StatemachineTests = [
        ("testInit", testInit),
        ("testTransitionTwoStateMachine", testTransitionTwoStateMachine),
    ]
}

extension TreesTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__TreesTests = [
        ("testInit", testInit),
        ("testTransitionTwoStateMachine", testTransitionTwoStateMachine),
    ]
}

public func __allTests() -> [XCTestCaseEntry] {
    return [
        testCase(BloomFilterTests.__allTests__BloomFilterTests),
        testCase(CommonTests.__allTests__CommonTests),
        testCase(HashingTests.__allTests__HashingTests),
        testCase(MembershipTests.__allTests__MembershipTests),
        testCase(StatemachineTests.__allTests__StatemachineTests),
        testCase(TreesTests.__allTests__TreesTests),
    ]
}
#endif
