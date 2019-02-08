// # Proxy Compiler 19.1.0-995ae6-20190123

import Foundation
import SAPOData

open class UserSetType: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var id_: Property = ParkingMetadata.EntityTypes.userSetType.property(withName: "id")

    private static var username_: Property = ParkingMetadata.EntityTypes.userSetType.property(withName: "username")

    private static var password_: Property = ParkingMetadata.EntityTypes.userSetType.property(withName: "password")

    private static var firstName_: Property = ParkingMetadata.EntityTypes.userSetType.property(withName: "firstName")

    private static var lastName_: Property = ParkingMetadata.EntityTypes.userSetType.property(withName: "lastName")

    private static var email_: Property = ParkingMetadata.EntityTypes.userSetType.property(withName: "email")

    private static var joinedAt_: Property = ParkingMetadata.EntityTypes.userSetType.property(withName: "joinedAt")

    private static var details_: Property = ParkingMetadata.EntityTypes.userSetType.property(withName: "details")

    private static var departmentID_: Property = ParkingMetadata.EntityTypes.userSetType.property(withName: "departmentID")

    private static var vehicleType_: Property = ParkingMetadata.EntityTypes.userSetType.property(withName: "vehicleType")

    private static var seatsAvailable_: Property = ParkingMetadata.EntityTypes.userSetType.property(withName: "seatsAvailable")

    private static var parkingEnabled_: Property = ParkingMetadata.EntityTypes.userSetType.property(withName: "parkingEnabled")

    private static var carpoolEnabled_: Property = ParkingMetadata.EntityTypes.userSetType.property(withName: "carpoolEnabled")

    private static var attendanceEnabled_: Property = ParkingMetadata.EntityTypes.userSetType.property(withName: "attendanceEnabled")

    private static var active_: Property = ParkingMetadata.EntityTypes.userSetType.property(withName: "active")

    private static var reservations_: Property = ParkingMetadata.EntityTypes.userSetType.property(withName: "reservations")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: ParkingMetadata.EntityTypes.userSetType)
    }

    open class var active: Property {
        get {
            objc_sync_enter(UserSetType.self)
            defer { objc_sync_exit(UserSetType.self) }
            do {
                return UserSetType.active_
            }
        }
        set(value) {
            objc_sync_enter(UserSetType.self)
            defer { objc_sync_exit(UserSetType.self) }
            do {
                UserSetType.active_ = value
            }
        }
    }

    open var active: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: UserSetType.active))
        }
        set(value) {
            self.setOptionalValue(for: UserSetType.active, to: IntValue.of(optional: value))
        }
    }

    open class func array(from: EntityValueList) -> Array<UserSetType> {
        return ArrayConverter.convert(from.toArray(), Array<UserSetType>())
    }

    open class var attendanceEnabled: Property {
        get {
            objc_sync_enter(UserSetType.self)
            defer { objc_sync_exit(UserSetType.self) }
            do {
                return UserSetType.attendanceEnabled_
            }
        }
        set(value) {
            objc_sync_enter(UserSetType.self)
            defer { objc_sync_exit(UserSetType.self) }
            do {
                UserSetType.attendanceEnabled_ = value
            }
        }
    }

    open var attendanceEnabled: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: UserSetType.attendanceEnabled))
        }
        set(value) {
            self.setOptionalValue(for: UserSetType.attendanceEnabled, to: IntValue.of(optional: value))
        }
    }

    open class var carpoolEnabled: Property {
        get {
            objc_sync_enter(UserSetType.self)
            defer { objc_sync_exit(UserSetType.self) }
            do {
                return UserSetType.carpoolEnabled_
            }
        }
        set(value) {
            objc_sync_enter(UserSetType.self)
            defer { objc_sync_exit(UserSetType.self) }
            do {
                UserSetType.carpoolEnabled_ = value
            }
        }
    }

    open var carpoolEnabled: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: UserSetType.carpoolEnabled))
        }
        set(value) {
            self.setOptionalValue(for: UserSetType.carpoolEnabled, to: IntValue.of(optional: value))
        }
    }

    open func copy() -> UserSetType {
        return CastRequired<UserSetType>.from(self.copyEntity())
    }

    open class var departmentID: Property {
        get {
            objc_sync_enter(UserSetType.self)
            defer { objc_sync_exit(UserSetType.self) }
            do {
                return UserSetType.departmentID_
            }
        }
        set(value) {
            objc_sync_enter(UserSetType.self)
            defer { objc_sync_exit(UserSetType.self) }
            do {
                UserSetType.departmentID_ = value
            }
        }
    }

    open var departmentID: String? {
        get {
            return StringValue.optional(self.optionalValue(for: UserSetType.departmentID))
        }
        set(value) {
            self.setOptionalValue(for: UserSetType.departmentID, to: StringValue.of(optional: value))
        }
    }

    open class var details: Property {
        get {
            objc_sync_enter(UserSetType.self)
            defer { objc_sync_exit(UserSetType.self) }
            do {
                return UserSetType.details_
            }
        }
        set(value) {
            objc_sync_enter(UserSetType.self)
            defer { objc_sync_exit(UserSetType.self) }
            do {
                UserSetType.details_ = value
            }
        }
    }

    open var details: String? {
        get {
            return StringValue.optional(self.optionalValue(for: UserSetType.details))
        }
        set(value) {
            self.setOptionalValue(for: UserSetType.details, to: StringValue.of(optional: value))
        }
    }

    open class var email: Property {
        get {
            objc_sync_enter(UserSetType.self)
            defer { objc_sync_exit(UserSetType.self) }
            do {
                return UserSetType.email_
            }
        }
        set(value) {
            objc_sync_enter(UserSetType.self)
            defer { objc_sync_exit(UserSetType.self) }
            do {
                UserSetType.email_ = value
            }
        }
    }

    open var email: String? {
        get {
            return StringValue.optional(self.optionalValue(for: UserSetType.email))
        }
        set(value) {
            self.setOptionalValue(for: UserSetType.email, to: StringValue.of(optional: value))
        }
    }

    open class var firstName: Property {
        get {
            objc_sync_enter(UserSetType.self)
            defer { objc_sync_exit(UserSetType.self) }
            do {
                return UserSetType.firstName_
            }
        }
        set(value) {
            objc_sync_enter(UserSetType.self)
            defer { objc_sync_exit(UserSetType.self) }
            do {
                UserSetType.firstName_ = value
            }
        }
    }

    open var firstName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: UserSetType.firstName))
        }
        set(value) {
            self.setOptionalValue(for: UserSetType.firstName, to: StringValue.of(optional: value))
        }
    }

    open class var id: Property {
        get {
            objc_sync_enter(UserSetType.self)
            defer { objc_sync_exit(UserSetType.self) }
            do {
                return UserSetType.id_
            }
        }
        set(value) {
            objc_sync_enter(UserSetType.self)
            defer { objc_sync_exit(UserSetType.self) }
            do {
                UserSetType.id_ = value
            }
        }
    }

    open var id: String? {
        get {
            return StringValue.optional(self.optionalValue(for: UserSetType.id))
        }
        set(value) {
            self.setOptionalValue(for: UserSetType.id, to: StringValue.of(optional: value))
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class var joinedAt: Property {
        get {
            objc_sync_enter(UserSetType.self)
            defer { objc_sync_exit(UserSetType.self) }
            do {
                return UserSetType.joinedAt_
            }
        }
        set(value) {
            objc_sync_enter(UserSetType.self)
            defer { objc_sync_exit(UserSetType.self) }
            do {
                UserSetType.joinedAt_ = value
            }
        }
    }

    open var joinedAt: LocalDateTime? {
        get {
            return LocalDateTime.castOptional(self.optionalValue(for: UserSetType.joinedAt))
        }
        set(value) {
            self.setOptionalValue(for: UserSetType.joinedAt, to: value)
        }
    }

    open class func key(id: String?) -> EntityKey {
        return EntityKey().with(name: "id", value: StringValue.of(optional: id))
    }

    open class var lastName: Property {
        get {
            objc_sync_enter(UserSetType.self)
            defer { objc_sync_exit(UserSetType.self) }
            do {
                return UserSetType.lastName_
            }
        }
        set(value) {
            objc_sync_enter(UserSetType.self)
            defer { objc_sync_exit(UserSetType.self) }
            do {
                UserSetType.lastName_ = value
            }
        }
    }

    open var lastName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: UserSetType.lastName))
        }
        set(value) {
            self.setOptionalValue(for: UserSetType.lastName, to: StringValue.of(optional: value))
        }
    }

    open var old: UserSetType {
        return CastRequired<UserSetType>.from(self.oldEntity)
    }

    open class var parkingEnabled: Property {
        get {
            objc_sync_enter(UserSetType.self)
            defer { objc_sync_exit(UserSetType.self) }
            do {
                return UserSetType.parkingEnabled_
            }
        }
        set(value) {
            objc_sync_enter(UserSetType.self)
            defer { objc_sync_exit(UserSetType.self) }
            do {
                UserSetType.parkingEnabled_ = value
            }
        }
    }

    open var parkingEnabled: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: UserSetType.parkingEnabled))
        }
        set(value) {
            self.setOptionalValue(for: UserSetType.parkingEnabled, to: IntValue.of(optional: value))
        }
    }

    open class var password: Property {
        get {
            objc_sync_enter(UserSetType.self)
            defer { objc_sync_exit(UserSetType.self) }
            do {
                return UserSetType.password_
            }
        }
        set(value) {
            objc_sync_enter(UserSetType.self)
            defer { objc_sync_exit(UserSetType.self) }
            do {
                UserSetType.password_ = value
            }
        }
    }

    open var password: String? {
        get {
            return StringValue.optional(self.optionalValue(for: UserSetType.password))
        }
        set(value) {
            self.setOptionalValue(for: UserSetType.password, to: StringValue.of(optional: value))
        }
    }

    open class var reservations: Property {
        get {
            objc_sync_enter(UserSetType.self)
            defer { objc_sync_exit(UserSetType.self) }
            do {
                return UserSetType.reservations_
            }
        }
        set(value) {
            objc_sync_enter(UserSetType.self)
            defer { objc_sync_exit(UserSetType.self) }
            do {
                UserSetType.reservations_ = value
            }
        }
    }

    open var reservations: Array<ReservationSetType> {
        get {
            return ArrayConverter.convert(EntityValueList.castRequired(self.requiredValue(for: UserSetType.reservations)).toArray(), Array<ReservationSetType>())
        }
        set(value) {
            UserSetType.reservations.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, Array<EntityValue>())))
        }
    }

    open class var seatsAvailable: Property {
        get {
            objc_sync_enter(UserSetType.self)
            defer { objc_sync_exit(UserSetType.self) }
            do {
                return UserSetType.seatsAvailable_
            }
        }
        set(value) {
            objc_sync_enter(UserSetType.self)
            defer { objc_sync_exit(UserSetType.self) }
            do {
                UserSetType.seatsAvailable_ = value
            }
        }
    }

    open var seatsAvailable: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: UserSetType.seatsAvailable))
        }
        set(value) {
            self.setOptionalValue(for: UserSetType.seatsAvailable, to: IntValue.of(optional: value))
        }
    }

    open class var username: Property {
        get {
            objc_sync_enter(UserSetType.self)
            defer { objc_sync_exit(UserSetType.self) }
            do {
                return UserSetType.username_
            }
        }
        set(value) {
            objc_sync_enter(UserSetType.self)
            defer { objc_sync_exit(UserSetType.self) }
            do {
                UserSetType.username_ = value
            }
        }
    }

    open var username: String? {
        get {
            return StringValue.optional(self.optionalValue(for: UserSetType.username))
        }
        set(value) {
            self.setOptionalValue(for: UserSetType.username, to: StringValue.of(optional: value))
        }
    }

    open class var vehicleType: Property {
        get {
            objc_sync_enter(UserSetType.self)
            defer { objc_sync_exit(UserSetType.self) }
            do {
                return UserSetType.vehicleType_
            }
        }
        set(value) {
            objc_sync_enter(UserSetType.self)
            defer { objc_sync_exit(UserSetType.self) }
            do {
                UserSetType.vehicleType_ = value
            }
        }
    }

    open var vehicleType: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: UserSetType.vehicleType))
        }
        set(value) {
            self.setOptionalValue(for: UserSetType.vehicleType, to: IntValue.of(optional: value))
        }
    }
}
