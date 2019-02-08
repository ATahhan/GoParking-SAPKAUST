// # Proxy Compiler 19.1.0-995ae6-20190123

import Foundation
import SAPOData

public class ParkingMetadata {
    private static var document_: CSDLDocument = ParkingMetadata.resolve()

    public static var document: CSDLDocument {
        get {
            objc_sync_enter(ParkingMetadata.self)
            defer { objc_sync_exit(ParkingMetadata.self) }
            do {
                return ParkingMetadata.document_
            }
        }
        set(value) {
            objc_sync_enter(ParkingMetadata.self)
            defer { objc_sync_exit(ParkingMetadata.self) }
            do {
                ParkingMetadata.document_ = value
            }
        }
    }

    private static func resolve() -> CSDLDocument {
        try! ParkingFactory.registerAll()
        ParkingMetadataParser.parsed.hasGeneratedProxies = true
        return ParkingMetadataParser.parsed
    }

    public class EntityTypes {
        private static var areaSetType_: EntityType = ParkingMetadataParser.parsed.entityType(withName: "kaust.services.parking.AreaSetType")

        private static var lotSetType_: EntityType = ParkingMetadataParser.parsed.entityType(withName: "kaust.services.parking.LotSetType")

        private static var reservationSetType_: EntityType = ParkingMetadataParser.parsed.entityType(withName: "kaust.services.parking.ReservationSetType")

        private static var userSetType_: EntityType = ParkingMetadataParser.parsed.entityType(withName: "kaust.services.parking.UserSetType")

        public static var areaSetType: EntityType {
            get {
                objc_sync_enter(ParkingMetadata.EntityTypes.self)
                defer { objc_sync_exit(ParkingMetadata.EntityTypes.self) }
                do {
                    return ParkingMetadata.EntityTypes.areaSetType_
                }
            }
            set(value) {
                objc_sync_enter(ParkingMetadata.EntityTypes.self)
                defer { objc_sync_exit(ParkingMetadata.EntityTypes.self) }
                do {
                    ParkingMetadata.EntityTypes.areaSetType_ = value
                }
            }
        }

        public static var lotSetType: EntityType {
            get {
                objc_sync_enter(ParkingMetadata.EntityTypes.self)
                defer { objc_sync_exit(ParkingMetadata.EntityTypes.self) }
                do {
                    return ParkingMetadata.EntityTypes.lotSetType_
                }
            }
            set(value) {
                objc_sync_enter(ParkingMetadata.EntityTypes.self)
                defer { objc_sync_exit(ParkingMetadata.EntityTypes.self) }
                do {
                    ParkingMetadata.EntityTypes.lotSetType_ = value
                }
            }
        }

        public static var reservationSetType: EntityType {
            get {
                objc_sync_enter(ParkingMetadata.EntityTypes.self)
                defer { objc_sync_exit(ParkingMetadata.EntityTypes.self) }
                do {
                    return ParkingMetadata.EntityTypes.reservationSetType_
                }
            }
            set(value) {
                objc_sync_enter(ParkingMetadata.EntityTypes.self)
                defer { objc_sync_exit(ParkingMetadata.EntityTypes.self) }
                do {
                    ParkingMetadata.EntityTypes.reservationSetType_ = value
                }
            }
        }

        public static var userSetType: EntityType {
            get {
                objc_sync_enter(ParkingMetadata.EntityTypes.self)
                defer { objc_sync_exit(ParkingMetadata.EntityTypes.self) }
                do {
                    return ParkingMetadata.EntityTypes.userSetType_
                }
            }
            set(value) {
                objc_sync_enter(ParkingMetadata.EntityTypes.self)
                defer { objc_sync_exit(ParkingMetadata.EntityTypes.self) }
                do {
                    ParkingMetadata.EntityTypes.userSetType_ = value
                }
            }
        }
    }

    public class EntitySets {
        private static var areaSet_: EntitySet = ParkingMetadataParser.parsed.entitySet(withName: "AreaSet")

        private static var lotSet_: EntitySet = ParkingMetadataParser.parsed.entitySet(withName: "LotSet")

        private static var reservationSet_: EntitySet = ParkingMetadataParser.parsed.entitySet(withName: "ReservationSet")

        private static var userSet_: EntitySet = ParkingMetadataParser.parsed.entitySet(withName: "UserSet")

        public static var areaSet: EntitySet {
            get {
                objc_sync_enter(ParkingMetadata.EntitySets.self)
                defer { objc_sync_exit(ParkingMetadata.EntitySets.self) }
                do {
                    return ParkingMetadata.EntitySets.areaSet_
                }
            }
            set(value) {
                objc_sync_enter(ParkingMetadata.EntitySets.self)
                defer { objc_sync_exit(ParkingMetadata.EntitySets.self) }
                do {
                    ParkingMetadata.EntitySets.areaSet_ = value
                }
            }
        }

        public static var lotSet: EntitySet {
            get {
                objc_sync_enter(ParkingMetadata.EntitySets.self)
                defer { objc_sync_exit(ParkingMetadata.EntitySets.self) }
                do {
                    return ParkingMetadata.EntitySets.lotSet_
                }
            }
            set(value) {
                objc_sync_enter(ParkingMetadata.EntitySets.self)
                defer { objc_sync_exit(ParkingMetadata.EntitySets.self) }
                do {
                    ParkingMetadata.EntitySets.lotSet_ = value
                }
            }
        }

        public static var reservationSet: EntitySet {
            get {
                objc_sync_enter(ParkingMetadata.EntitySets.self)
                defer { objc_sync_exit(ParkingMetadata.EntitySets.self) }
                do {
                    return ParkingMetadata.EntitySets.reservationSet_
                }
            }
            set(value) {
                objc_sync_enter(ParkingMetadata.EntitySets.self)
                defer { objc_sync_exit(ParkingMetadata.EntitySets.self) }
                do {
                    ParkingMetadata.EntitySets.reservationSet_ = value
                }
            }
        }

        public static var userSet: EntitySet {
            get {
                objc_sync_enter(ParkingMetadata.EntitySets.self)
                defer { objc_sync_exit(ParkingMetadata.EntitySets.self) }
                do {
                    return ParkingMetadata.EntitySets.userSet_
                }
            }
            set(value) {
                objc_sync_enter(ParkingMetadata.EntitySets.self)
                defer { objc_sync_exit(ParkingMetadata.EntitySets.self) }
                do {
                    ParkingMetadata.EntitySets.userSet_ = value
                }
            }
        }
    }
}
