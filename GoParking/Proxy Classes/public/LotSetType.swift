// # Proxy Compiler 19.1.0-995ae6-20190123

import Foundation
import SAPOData

open class LotSetType: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var id_: Property = ParkingMetadata.EntityTypes.lotSetType.property(withName: "id")

    private static var name_: Property = ParkingMetadata.EntityTypes.lotSetType.property(withName: "name")

    private static var isOccupied_: Property = ParkingMetadata.EntityTypes.lotSetType.property(withName: "isOccupied")

    private static var reserved_: Property = ParkingMetadata.EntityTypes.lotSetType.property(withName: "reserved")

    private static var area_: Property = ParkingMetadata.EntityTypes.lotSetType.property(withName: "area")

    private static var areaDetails_: Property = ParkingMetadata.EntityTypes.lotSetType.property(withName: "areaDetails")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: ParkingMetadata.EntityTypes.lotSetType)
    }

    open class var area: Property {
        get {
            objc_sync_enter(LotSetType.self)
            defer { objc_sync_exit(LotSetType.self) }
            do {
                return LotSetType.area_
            }
        }
        set(value) {
            objc_sync_enter(LotSetType.self)
            defer { objc_sync_exit(LotSetType.self) }
            do {
                LotSetType.area_ = value
            }
        }
    }

    open var area: String? {
        get {
            return StringValue.optional(self.optionalValue(for: LotSetType.area))
        }
        set(value) {
            self.setOptionalValue(for: LotSetType.area, to: StringValue.of(optional: value))
        }
    }

    open class var areaDetails: Property {
        get {
            objc_sync_enter(LotSetType.self)
            defer { objc_sync_exit(LotSetType.self) }
            do {
                return LotSetType.areaDetails_
            }
        }
        set(value) {
            objc_sync_enter(LotSetType.self)
            defer { objc_sync_exit(LotSetType.self) }
            do {
                LotSetType.areaDetails_ = value
            }
        }
    }

    open var areaDetails: AreaSetType? {
        get {
            return CastOptional<AreaSetType>.from(self.optionalValue(for: LotSetType.areaDetails))
        }
        set(value) {
            self.setOptionalValue(for: LotSetType.areaDetails, to: value)
        }
    }

    open class func array(from: EntityValueList) -> Array<LotSetType> {
        return ArrayConverter.convert(from.toArray(), Array<LotSetType>())
    }

    open func copy() -> LotSetType {
        return CastRequired<LotSetType>.from(self.copyEntity())
    }

    open class var id: Property {
        get {
            objc_sync_enter(LotSetType.self)
            defer { objc_sync_exit(LotSetType.self) }
            do {
                return LotSetType.id_
            }
        }
        set(value) {
            objc_sync_enter(LotSetType.self)
            defer { objc_sync_exit(LotSetType.self) }
            do {
                LotSetType.id_ = value
            }
        }
    }

    open var id: String? {
        get {
            return StringValue.optional(self.optionalValue(for: LotSetType.id))
        }
        set(value) {
            self.setOptionalValue(for: LotSetType.id, to: StringValue.of(optional: value))
        }
    }

    open class var isOccupied: Property {
        get {
            objc_sync_enter(LotSetType.self)
            defer { objc_sync_exit(LotSetType.self) }
            do {
                return LotSetType.isOccupied_
            }
        }
        set(value) {
            objc_sync_enter(LotSetType.self)
            defer { objc_sync_exit(LotSetType.self) }
            do {
                LotSetType.isOccupied_ = value
            }
        }
    }

    open var isOccupied: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: LotSetType.isOccupied))
        }
        set(value) {
            self.setOptionalValue(for: LotSetType.isOccupied, to: IntValue.of(optional: value))
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(id: String?) -> EntityKey {
        return EntityKey().with(name: "id", value: StringValue.of(optional: id))
    }

    open class var name: Property {
        get {
            objc_sync_enter(LotSetType.self)
            defer { objc_sync_exit(LotSetType.self) }
            do {
                return LotSetType.name_
            }
        }
        set(value) {
            objc_sync_enter(LotSetType.self)
            defer { objc_sync_exit(LotSetType.self) }
            do {
                LotSetType.name_ = value
            }
        }
    }

    open var name: String? {
        get {
            return StringValue.optional(self.optionalValue(for: LotSetType.name))
        }
        set(value) {
            self.setOptionalValue(for: LotSetType.name, to: StringValue.of(optional: value))
        }
    }

    open var old: LotSetType {
        return CastRequired<LotSetType>.from(self.oldEntity)
    }

    open class var reserved: Property {
        get {
            objc_sync_enter(LotSetType.self)
            defer { objc_sync_exit(LotSetType.self) }
            do {
                return LotSetType.reserved_
            }
        }
        set(value) {
            objc_sync_enter(LotSetType.self)
            defer { objc_sync_exit(LotSetType.self) }
            do {
                LotSetType.reserved_ = value
            }
        }
    }

    open var reserved: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: LotSetType.reserved))
        }
        set(value) {
            self.setOptionalValue(for: LotSetType.reserved, to: IntValue.of(optional: value))
        }
    }
}
