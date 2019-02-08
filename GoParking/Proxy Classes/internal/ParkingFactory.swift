// # Proxy Compiler 19.1.0-995ae6-20190123

import Foundation
import SAPOData

internal class ParkingFactory {
    static func registerAll() throws {
        ParkingMetadata.EntityTypes.areaSetType.registerFactory(ObjectFactory.with(create: { AreaSetType(withDefaults: false) }, createWithDecoder: { d in try AreaSetType(from: d) }))
        ParkingMetadata.EntityTypes.lotSetType.registerFactory(ObjectFactory.with(create: { LotSetType(withDefaults: false) }, createWithDecoder: { d in try LotSetType(from: d) }))
        ParkingMetadata.EntityTypes.reservationSetType.registerFactory(ObjectFactory.with(create: { ReservationSetType(withDefaults: false) }, createWithDecoder: { d in try ReservationSetType(from: d) }))
        ParkingMetadata.EntityTypes.userSetType.registerFactory(ObjectFactory.with(create: { UserSetType(withDefaults: false) }, createWithDecoder: { d in try UserSetType(from: d) }))
        ParkingStaticResolver.resolve()
    }
}
