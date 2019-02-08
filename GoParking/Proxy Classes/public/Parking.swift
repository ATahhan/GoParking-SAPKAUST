// # Proxy Compiler 19.1.0-995ae6-20190123

import Foundation
import SAPOData

open class Parking<Provider: DataServiceProvider>: DataService<Provider> {
    public override init(provider: Provider) {
        super.init(provider: provider)
        self.provider.metadata = ParkingMetadata.document
    }

    @available(swift, deprecated: 4.0, renamed: "fetchAreaSet")
    open func areaSet(query: DataQuery = DataQuery()) throws -> Array<AreaSetType> {
        return try self.fetchAreaSet(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchAreaSet")
    open func areaSet(query: DataQuery = DataQuery(), completionHandler: @escaping (Array<AreaSetType>?, Error?) -> Void) {
        self.fetchAreaSet(matching: query, headers: nil, options: nil, completionHandler: completionHandler)
    }

    open func fetchAreaSet(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Array<AreaSetType> {
        let var_query = DataQuery.newIfNull(query: query)
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try AreaSetType.array(from: self.executeQuery(var_query.fromDefault(ParkingMetadata.EntitySets.areaSet), headers: var_headers, options: var_options).entityList())
    }

    open func fetchAreaSet(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Array<AreaSetType>?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchAreaSet(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAreaSetType(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> AreaSetType {
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try CastRequired<AreaSetType>.from(self.executeQuery(query.fromDefault(ParkingMetadata.EntitySets.areaSet), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchAreaSetType(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (AreaSetType?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchAreaSetType(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAreaSetTypeWithKey(id: String?, query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> AreaSetType {
        let var_query = DataQuery.newIfNull(query: query)
        return try self.fetchAreaSetType(matching: var_query.withKey(AreaSetType.key(id: id)), headers: headers, options: options)
    }

    open func fetchAreaSetTypeWithKey(id: String?, query: DataQuery?, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (AreaSetType?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchAreaSetTypeWithKey(id: id, query: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchLotSet(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Array<LotSetType> {
        let var_query = DataQuery.newIfNull(query: query)
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try LotSetType.array(from: self.executeQuery(var_query.fromDefault(ParkingMetadata.EntitySets.lotSet), headers: var_headers, options: var_options).entityList())
    }

    open func fetchLotSet(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Array<LotSetType>?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchLotSet(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchLotSetType(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> LotSetType {
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try CastRequired<LotSetType>.from(self.executeQuery(query.fromDefault(ParkingMetadata.EntitySets.lotSet), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchLotSetType(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (LotSetType?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchLotSetType(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchLotSetTypeWithKey(id: String?, query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> LotSetType {
        let var_query = DataQuery.newIfNull(query: query)
        return try self.fetchLotSetType(matching: var_query.withKey(LotSetType.key(id: id)), headers: headers, options: options)
    }

    open func fetchLotSetTypeWithKey(id: String?, query: DataQuery?, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (LotSetType?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchLotSetTypeWithKey(id: id, query: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchReservationSet(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Array<ReservationSetType> {
        let var_query = DataQuery.newIfNull(query: query)
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try ReservationSetType.array(from: self.executeQuery(var_query.fromDefault(ParkingMetadata.EntitySets.reservationSet), headers: var_headers, options: var_options).entityList())
    }

    open func fetchReservationSet(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Array<ReservationSetType>?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchReservationSet(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchReservationSetType(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> ReservationSetType {
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try CastRequired<ReservationSetType>.from(self.executeQuery(query.fromDefault(ParkingMetadata.EntitySets.reservationSet), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchReservationSetType(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (ReservationSetType?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchReservationSetType(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchReservationSetTypeWithKey(lotID: String?, userID: String?, query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> ReservationSetType {
        let var_query = DataQuery.newIfNull(query: query)
        return try self.fetchReservationSetType(matching: var_query.withKey(ReservationSetType.key(lotID: lotID, userID: userID)), headers: headers, options: options)
    }

    open func fetchReservationSetTypeWithKey(lotID: String?, userID: String?, query: DataQuery?, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (ReservationSetType?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchReservationSetTypeWithKey(lotID: lotID, userID: userID, query: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchUserSet(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Array<UserSetType> {
        let var_query = DataQuery.newIfNull(query: query)
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try UserSetType.array(from: self.executeQuery(var_query.fromDefault(ParkingMetadata.EntitySets.userSet), headers: var_headers, options: var_options).entityList())
    }

    open func fetchUserSet(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Array<UserSetType>?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchUserSet(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchUserSetType(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> UserSetType {
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try CastRequired<UserSetType>.from(self.executeQuery(query.fromDefault(ParkingMetadata.EntitySets.userSet), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchUserSetType(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (UserSetType?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchUserSetType(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchUserSetTypeWithKey(id: String?, query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> UserSetType {
        let var_query = DataQuery.newIfNull(query: query)
        return try self.fetchUserSetType(matching: var_query.withKey(UserSetType.key(id: id)), headers: headers, options: options)
    }

    open func fetchUserSetTypeWithKey(id: String?, query: DataQuery?, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (UserSetType?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchUserSetTypeWithKey(id: id, query: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    @available(swift, deprecated: 4.0, renamed: "fetchLotSet")
    open func lotSet(query: DataQuery = DataQuery()) throws -> Array<LotSetType> {
        return try self.fetchLotSet(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchLotSet")
    open func lotSet(query: DataQuery = DataQuery(), completionHandler: @escaping (Array<LotSetType>?, Error?) -> Void) {
        self.fetchLotSet(matching: query, headers: nil, options: nil, completionHandler: completionHandler)
    }

    open override func refreshMetadata() throws {
        objc_sync_enter(self)
        defer { objc_sync_exit(self) }
        do {
            try ProxyInternal.refreshMetadata(service: self, fetcher: nil, options: ParkingMetadataParser.options)
            ParkingMetadataChanges.merge(metadata: self.metadata)
        }
    }

    @available(swift, deprecated: 4.0, renamed: "fetchReservationSet")
    open func reservationSet(query: DataQuery = DataQuery()) throws -> Array<ReservationSetType> {
        return try self.fetchReservationSet(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchReservationSet")
    open func reservationSet(query: DataQuery = DataQuery(), completionHandler: @escaping (Array<ReservationSetType>?, Error?) -> Void) {
        self.fetchReservationSet(matching: query, headers: nil, options: nil, completionHandler: completionHandler)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchUserSet")
    open func userSet(query: DataQuery = DataQuery()) throws -> Array<UserSetType> {
        return try self.fetchUserSet(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchUserSet")
    open func userSet(query: DataQuery = DataQuery(), completionHandler: @escaping (Array<UserSetType>?, Error?) -> Void) {
        self.fetchUserSet(matching: query, headers: nil, options: nil, completionHandler: completionHandler)
    }
}
