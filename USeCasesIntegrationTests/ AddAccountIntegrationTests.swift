//
//  USeCasesIntegrationTests.swift
//  USeCasesIntegrationTests
//
//  Created by Wendell Claus on 18/11/22.
//

import XCTest
import Data
import Infra
import Domain

class AddAccountIntegrationTests: XCTestCase {
    func test_add_account() {
        let alamofireAdapter = AlamofireAdapter()
        let url = URL(string: "https://clean-node-api.herokuapp.com/api/signup")!
        let sut = RemoteAddAccount(url: url, httpClient: alamofireAdapter)
        let addAccountModel = AddAccountModel(name: "Wendell Claus", email: "wendell.claus@gmail.com", password: "secret", passwordConfirmation: "secret")
        let exp = expectation(description: "waiting")
        sut.add(addCccountModel: addAccountModel) { result in
            switch result {
            case .failure: XCTFail("Expect success, got \(result) instead")
            case .success(let account):
                XCTAssertNotNil(account.id)
                XCTAssertEqual(account.name, addAccountModel.name)
                XCTAssertEqual(account.email, addAccountModel.email)
            }
            exp.fulfill()
        }
        wait(for: [exp], timeout: 5)
    }
}
