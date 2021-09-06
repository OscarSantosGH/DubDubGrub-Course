//
//  CloudKitManager.swift
//  DubDubGrub
//
//  Created by Oscar Santos on 9/6/21.
//

import CloudKit

struct CloudKitManager {
    static func getlocations(completion: @escaping (Result<[DDGLocation], Error>) -> Void) {
        let sortDescriptor = NSSortDescriptor(key: DDGLocation.kName, ascending: true)
        let query = CKQuery(recordType: RecordType.location, predicate: NSPredicate(value: true))
        query.sortDescriptors = [sortDescriptor]
        
        CKContainer.default().publicCloudDatabase.perform(query, inZoneWith: nil) { records, error in
            guard error == nil else {
                completion(.failure(error!))
                return
            }
            
            guard let records = records else {
                completion(.success([]))
                return
            }
            
            let locations = records.map(DDGLocation.init)
            completion(.success(locations))
        }
    }
}
