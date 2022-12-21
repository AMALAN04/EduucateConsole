//
//  DatabaseRelatedObjects.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 12/08/22.
//

import Foundation

class DatabaseRelatedObjects {
    static let fetchData: FetchDataPotocol = FetchData()
    static let pushData: PushDataProtocol = PushData()
    static let updateData: UpdateDatabaseProtocol =  UpdateData()
    static let removeDara: RemoveDataProtocol =  RemoveData()
    static let verify: VerifyProtocol = Verify()
}
