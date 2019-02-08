// # Proxy Compiler 19.1.0-995ae6-20190123

import Foundation
import SAPOData

open class AreaSetType: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var id_: Property = ParkingMetadata.EntityTypes.areaSetType.property(withName: "id")

    private static var name_: Property = ParkingMetadata.EntityTypes.areaSetType.property(withName: "name")

    private static var latitude_: Property = ParkingMetadata.EntityTypes.areaSetType.property(withName: "latitude")

    private static var longitude_: Property = ParkingMetadata.EntityTypes.areaSetType.property(withName: "longitude")

    private static var slots_: Property = ParkingMetadata.EntityTypes.areaSetType.property(withName: "slots")

    private static var lots_: Property = ParkingMetadata.EntityTypes.areaSetType.property(withName: "lots")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: ParkingMetadata.EntityTypes.areaSetType)
    }

    open class func array(from: EntityValueList) -> Array<AreaSetType> {
        return ArrayConverter.convert(from.toArray(), Array<AreaSetType>())
    }

    open func copy() -> AreaSetType {
        return CastRequired<AreaSetType>.from(self.copyEntity())
    }

    open class var id: Property {
        get {
            objc_sync_enter(AreaSetType.self)
            defer { objc_sync_exit(AreaSetType.self) }
            do {
                return AreaSetType.id_
            }
        }
        set(value) {
            objc_sync_enter(AreaSetType.self)
            defer { objc_sync_exit(AreaSetType.self) }
            do {
                AreaSetType.id_ = value
            }
        }
    }

    open var id: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AreaSetType.id))
        }
        set(value) {
            self.setOptionalValue(for: AreaSetType.id, to: StringValue.of(optional: value))
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(id: String?) -> EntityKey {
        return EntityKey().with(name: "id", value: StringValue.of(optional: id))
    }

    open class var latitude: Property {
        get {
            objc_sync_enter(AreaSetType.self)
            defer { objc_sync_exit(AreaSetType.self) }
            do {
                return AreaSetType.latitude_
            }
        }
        set(value) {
            objc_sync_enter(AreaSetType.self)
            defer { objc_sync_exit(AreaSetType.self) }
            do {
                AreaSetType.latitude_ = value
            }
        }
    }

    open var latitude: Double? {
        get {
            return DoubleValue.optional(self.optionalValue(for: AreaSetType.latitude))
        }
        set(value) {
            self.setOptionalValue(for: AreaSetType.latitude, to: DoubleValue.of(optional: value))
        }
    }

    open class var longitude: Property {
        get {
            objc_sync_enter(AreaSetType.self)
            defer { objc_sync_exit(AreaSetType.self) }
            do {
                return AreaSetType.longitude_
            }
        }
        set(value) {
            objc_sync_enter(AreaSetType.self)
            defer { objc_sync_exit(AreaSetType.self) }
            do {
                AreaSetType.longitude_ = value
            }
        }
    }

    open var longitude: Double? {
        get {
            return DoubleValue.optional(self.optionalValue(for: AreaSetType.longitude))
        }
        set(value) {
            self.setOptionalValue(for: AreaSetType.longitude, to: DoubleValue.of(optional: value))
        }
    }

    open class var lots: Property {
        get {
            objc_sync_enter(AreaSetType.self)
            defer { objc_sync_exit(AreaSetType.self) }
            do {
                return AreaSetType.lots_
            }
        }
        set(value) {
            objc_sync_enter(AreaSetType.self)
            defer { objc_sync_exit(AreaSetType.self) }
            do {
                AreaSetType.lots_ = value
            }
        }
    }

    open var lots: Array<LotSetType> {
        get {
            return ArrayConverter.convert(EntityValueList.castRequired(self.requiredValue(for: AreaSetType.lots)).toArray(), Array<LotSetType>())
        }
        set(value) {
            AreaSetType.lots.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, Array<EntityValue>())))
        }
    }

    open class var name: Property {
        get {
            objc_sync_enter(AreaSetType.self)
            defer { objc_sync_exit(AreaSetType.self) }
            do {
                return AreaSetType.name_
            }
        }
        set(value) {
            objc_sync_enter(AreaSetType.self)
            defer { objc_sync_exit(AreaSetType.self) }
            do {
                AreaSetType.name_ = value
            }
        }
    }

    open var name: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AreaSetType.name))
        }
        set(value) {
            self.setOptionalValue(for: AreaSetType.name, to: StringValue.of(optional: value))
        }
    }

    open var old: AreaSetType {
        return CastRequired<AreaSetType>.from(self.oldEntity)
    }

    open class var slots: Property {
        get {
            objc_sync_enter(AreaSetType.self)
            defer { objc_sync_exit(AreaSetType.self) }
            do {
                return AreaSetType.slots_
            }
        }
        set(value) {
            objc_sync_enter(AreaSetType.self)
            defer { objc_sync_exit(AreaSetType.self) }
            do {
                AreaSetType.slots_ = value
            }
        }
    }

    open var slots: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: AreaSetType.slots))
        }
        set(value) {
            self.setOptionalValue(for: AreaSetType.slots, to: IntValue.of(optional: value))
        }
    }
}
