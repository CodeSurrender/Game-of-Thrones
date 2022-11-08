//
//  Game_of_ThronesTests.swift
//  Game of ThronesTests
//
//  Created by Collins on 28/10/2022.
//

import XCTest
@testable import Game_of_Thrones

class Game_of_ThronesTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    
    func testCharacterJSONData(){
        
        let name = "CharacterMockData"
        let data = readLocalFile(forName: name)
        //File test
        XCTAssertNotNil(data)

        //Decoding Test
        XCTAssertNoThrow(try JSONDecoder().decode([Character].self, from: data!))
 
    }
    
    func readLocalFile(forName name: String) -> Data? {
        do {
            if let bundlePath = Bundle.main.path(forResource: name,
                                                 ofType: "json"),
                let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8) {
                print("Success")
                return jsonData
            }
        } catch {
            print(error)
        }
        
        return nil
    }
    
    func testHouseJSONData(){
        
        let name = "HouseMockJSONData"
        let data = readLocalFile(forName: name)
        //File test
        XCTAssertNotNil(data)

        //Decoding Test
        XCTAssertNoThrow(try JSONDecoder().decode(House.self, from: data!))
 
    }
    

}
