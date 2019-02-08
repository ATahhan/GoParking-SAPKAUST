// # Proxy Compiler 19.1.0-995ae6-20190123

import Foundation
import SAPOData

open class ReservationSetType: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var lotID_: Property = ParkingMetadata.EntityTypes.reservationSetType.property(withName: "lotId")

    private static var userID_: Property = ParkingMetadata.EntityTypes.reservationSetType.property(withName: "userId")

    private static var startDate_: Property = ParkingMetadata.EntityTypes.reservationSetType.property(withName: "startDate")

    private static var endDate_: Property = ParkingMetadata.EntityTypes.reservationSetType.property(withName: "endDate")

    private static var active_: Property = ParkingMetadata.EntityTypes.reservationSetType.property(withName: "active")

    private static var actvie_: Property = ParkingMetadata.EntityTypes.reservationSetType.property(withName: "actvie")

    private static var lot_: Property = ParkingMetadata.EntityTypes.reservationSetType.property(withName: "lot")

    private static var userDetails_: Property = ParkingMetadata.EntityTypes.reservationSetType.property(withName: "userDetails")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: ParkingMetadata.EntityTypes.reservationSetType)
    }

    open class var active: Property {
        get {
            objc_sync_enter(ReservationSetType.self)
            defer { objc_sync_exit(ReservationSetType.self) }
            do {
                return ReservationSetType.active_
            }
        }
        set(value) {
            objc_sync_enter(ReservationSetType.self)
            defer { objc_sync_exit(ReservationSetType.self) }
            do {
                ReservationSetType.active_ = value
            }
        }
    }

    open var active: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: ReservationSetType.active))
        }
        set(value) {
            self.setOptionalValue(for: ReservationSetType.active, to: IntValue.of(optional: value))
        }
    }

    open class var actvie: Property {
        get {
            objc_sync_enter(ReservationSetType.self)
            defer { objc_sync_exit(ReservationSetType.self) }
            do {
                return ReservationSetType.actvie_
            }
        }
        set(value) {
            objc_sync_enter(ReservationSetType.self)
            defer { objc_sync_exit(ReservationSetType.self) }
            do {
                ReservationSetType.actvie_ = value
            }
        }
    }

    open var actvie: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: ReservationSetType.actvie))
        }
        set(value) {
            self.setOptionalValue(for: ReservationSetType.actvie, to: IntValue.of(optional: value))
        }
    }

    open class func array(from: EntityValueList) -> Array<ReservationSetType> {
        return ArrayConverter.convert(from.toArray(), Array<ReservationSetType>())
    }

    open func copy() -> ReservationSetType {
        return CastRequired<ReservationSetType>.from(self.copyEntity())
    }

    open class var endDate: Property {
        get {
            objc_sync_enter(ReservationSetType.self)
            defer { objc_sync_exit(ReservationSetType.self) }
            do {
                return ReservationSetType.endDate_
            }
        }
        set(value) {
            objc_sync_enter(ReservationSetType.self)
            defer { objc_sync_exit(ReservationSetType.self) }
            do {
                ReservationSetType.endDate_ = value
            }
        }
    }

    open var endDate: LocalDateTime? {
        get {
            return LocalDateTime.castOptional(self.optionalValue(for: ReservationSetType.endDate))
        }
        set(value) {
            self.setOptionalValue(for: ReservationSetType.endDate, to: value)
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(lotID: String?, userID: String?) -> EntityKey {
        return EntityKey().with(name: "lotId", value: StringValue.of(optional: lotID)).with(name: "userId", value: StringValue.of(optional: userID))
    }

    open class var lot: Property {
        get {
            objc_sync_enter(ReservationSetType.self)
            defer { objc_sync_exit(ReservationSetType.self) }
            do {
                return ReservationSetType.lot_
            }
        }
        set(value) {
            objc_sync_enter(ReservationSetType.self)
            defer { objc_sync_exit(ReservationSetType.self) }
            do {
                ReservationSetType.lot_ = value
            }
        }
    }

    open var lot: LotSetType? {
        get {
            return CastOptional<LotSetType>.from(self.optionalValue(for: ReservationSetType.lot))
        }
        set(value) {
            self.setOptionalValue(for: ReservationSetType.lot, to: value)
        }
    }

    open class var lotID: Property {
        get {
            objc_sync_enter(ReservationSetType.self)
            defer { objc_sync_exit(ReservationSetType.self) }
            do {
                return ReservationSetType.lotID_
            }
        }
        set(value) {
            objc_sync_enter(ReservationSetType.self)
            defer { objc_sync_exit(ReservationSetType.self) }
            do {
                ReservationSetType.lotID_ = value
            }
        }
    }

    open var lotID: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ReservationSetType.lotID))
        }
        set(value) {
            self.setOptionalValue(for: ReservationSetType.lotID, to: StringValue.of(optional: value))
        }
    }

    open var old: ReservationSetType {
        return CastRequired<ReservationSetType>.from(self.oldEntity)
    }

    open class var startDate: Property {
        get {
            objc_sync_enter(ReservationSetType.self)
            defer { objc_sync_exit(ReservationSetType.self) }
            do {
                return ReservationSetType.startDate_
            }
        }
        set(value) {
            objc_sync_enter(ReservationSetType.self)
            defer { objc_sync_exit(ReservationSetType.self) }
            do {
                ReservationSetType.startDate_ = value
            }
        }
    }

    open var startDate: LocalDateTime? {
        get {
            return LocalDateTime.castOptional(self.optionalValue(for: ReservationSetType.startDate))
        }
        set(value) {
            self.setOptionalValue(for: ReservationSetType.startDate, to: value)
        }
    }

    open class var userDetails: Property {
        get {
            objc_sync_enter(ReservationSetType.self)
            defer { objc_sync_exit(ReservationSetType.self) }
            do {
                return ReservationSetType.userDetails_
            }
        }
        set(value) {
            objc_sync_enter(ReservationSetType.self)
            defer { objc_sync_exit(ReservationSetType.self) }
            do {
                ReservationSetType.userDetails_ = value
            }
        }
    }

    open var userDetails: UserSetType? {
        get {
            return CastOptional<UserSetType>.from(self.optionalValue(for: ReservationSetType.userDetails))
        }
        set(value) {
            self.setOptionalValue(for: ReservationSetType.userDetails, to: value)
        }
    }

    open class var userID: Property {
        get {
            objc_sync_enter(ReservationSetType.self)
            defer { objc_sync_exit(ReservationSetType.self) }
            do {
                return ReservationSetType.userID_
            }
        }
        set(value) {
            objc_sync_enter(ReservationSetType.self)
            defer { objc_sync_exit(ReservationSetType.self) }
            do {
                ReservationSetType.userID_ = value
            }
        }
    }

    open var userID: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ReservationSetType.userID))
        }
        set(value) {
            self.setOptionalValue(for: ReservationSetType.userID, to: StringValue.of(optional: value))
        }
    }
}
