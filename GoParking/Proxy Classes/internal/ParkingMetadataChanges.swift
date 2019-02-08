// # Proxy Compiler 19.1.0-995ae6-20190123

import Foundation
import SAPOData

internal class ParkingMetadataChanges {
    static func merge(metadata: CSDLDocument) {
        metadata.hasGeneratedProxies = true
        ParkingMetadata.document = metadata
        ParkingMetadataChanges.merge1(metadata: metadata)
        try! ParkingFactory.registerAll()
    }

    private static func merge1(metadata: CSDLDocument) {
        Ignore.valueOf_any(metadata)
        if !ParkingMetadata.EntityTypes.areaSetType.isRemoved {
            ParkingMetadata.EntityTypes.areaSetType = metadata.entityType(withName: "kaust.services.parking.AreaSetType")
        }
        if !ParkingMetadata.EntityTypes.lotSetType.isRemoved {
            ParkingMetadata.EntityTypes.lotSetType = metadata.entityType(withName: "kaust.services.parking.LotSetType")
        }
        if !ParkingMetadata.EntityTypes.reservationSetType.isRemoved {
            ParkingMetadata.EntityTypes.reservationSetType = metadata.entityType(withName: "kaust.services.parking.ReservationSetType")
        }
        if !ParkingMetadata.EntityTypes.userSetType.isRemoved {
            ParkingMetadata.EntityTypes.userSetType = metadata.entityType(withName: "kaust.services.parking.UserSetType")
        }
        if !ParkingMetadata.EntitySets.areaSet.isRemoved {
            ParkingMetadata.EntitySets.areaSet = metadata.entitySet(withName: "AreaSet")
        }
        if !ParkingMetadata.EntitySets.lotSet.isRemoved {
            ParkingMetadata.EntitySets.lotSet = metadata.entitySet(withName: "LotSet")
        }
        if !ParkingMetadata.EntitySets.reservationSet.isRemoved {
            ParkingMetadata.EntitySets.reservationSet = metadata.entitySet(withName: "ReservationSet")
        }
        if !ParkingMetadata.EntitySets.userSet.isRemoved {
            ParkingMetadata.EntitySets.userSet = metadata.entitySet(withName: "UserSet")
        }
        if !AreaSetType.id.isRemoved {
            AreaSetType.id = ParkingMetadata.EntityTypes.areaSetType.property(withName: "id")
        }
        if !AreaSetType.name.isRemoved {
            AreaSetType.name = ParkingMetadata.EntityTypes.areaSetType.property(withName: "name")
        }
        if !AreaSetType.latitude.isRemoved {
            AreaSetType.latitude = ParkingMetadata.EntityTypes.areaSetType.property(withName: "latitude")
        }
        if !AreaSetType.longitude.isRemoved {
            AreaSetType.longitude = ParkingMetadata.EntityTypes.areaSetType.property(withName: "longitude")
        }
        if !AreaSetType.slots.isRemoved {
            AreaSetType.slots = ParkingMetadata.EntityTypes.areaSetType.property(withName: "slots")
        }
        if !AreaSetType.lots.isRemoved {
            AreaSetType.lots = ParkingMetadata.EntityTypes.areaSetType.property(withName: "lots")
        }
        if !LotSetType.id.isRemoved {
            LotSetType.id = ParkingMetadata.EntityTypes.lotSetType.property(withName: "id")
        }
        if !LotSetType.name.isRemoved {
            LotSetType.name = ParkingMetadata.EntityTypes.lotSetType.property(withName: "name")
        }
        if !LotSetType.isOccupied.isRemoved {
            LotSetType.isOccupied = ParkingMetadata.EntityTypes.lotSetType.property(withName: "isOccupied")
        }
        if !LotSetType.reserved.isRemoved {
            LotSetType.reserved = ParkingMetadata.EntityTypes.lotSetType.property(withName: "reserved")
        }
        if !LotSetType.area.isRemoved {
            LotSetType.area = ParkingMetadata.EntityTypes.lotSetType.property(withName: "area")
        }
        if !LotSetType.areaDetails.isRemoved {
            LotSetType.areaDetails = ParkingMetadata.EntityTypes.lotSetType.property(withName: "areaDetails")
        }
        if !ReservationSetType.lotID.isRemoved {
            ReservationSetType.lotID = ParkingMetadata.EntityTypes.reservationSetType.property(withName: "lotId")
        }
        if !ReservationSetType.userID.isRemoved {
            ReservationSetType.userID = ParkingMetadata.EntityTypes.reservationSetType.property(withName: "userId")
        }
        if !ReservationSetType.startDate.isRemoved {
            ReservationSetType.startDate = ParkingMetadata.EntityTypes.reservationSetType.property(withName: "startDate")
        }
        if !ReservationSetType.endDate.isRemoved {
            ReservationSetType.endDate = ParkingMetadata.EntityTypes.reservationSetType.property(withName: "endDate")
        }
        if !ReservationSetType.active.isRemoved {
            ReservationSetType.active = ParkingMetadata.EntityTypes.reservationSetType.property(withName: "active")
        }
        if !ReservationSetType.actvie.isRemoved {
            ReservationSetType.actvie = ParkingMetadata.EntityTypes.reservationSetType.property(withName: "actvie")
        }
        if !ReservationSetType.lot.isRemoved {
            ReservationSetType.lot = ParkingMetadata.EntityTypes.reservationSetType.property(withName: "lot")
        }
        if !ReservationSetType.userDetails.isRemoved {
            ReservationSetType.userDetails = ParkingMetadata.EntityTypes.reservationSetType.property(withName: "userDetails")
        }
        if !UserSetType.id.isRemoved {
            UserSetType.id = ParkingMetadata.EntityTypes.userSetType.property(withName: "id")
        }
        if !UserSetType.username.isRemoved {
            UserSetType.username = ParkingMetadata.EntityTypes.userSetType.property(withName: "username")
        }
        if !UserSetType.password.isRemoved {
            UserSetType.password = ParkingMetadata.EntityTypes.userSetType.property(withName: "password")
        }
        if !UserSetType.firstName.isRemoved {
            UserSetType.firstName = ParkingMetadata.EntityTypes.userSetType.property(withName: "firstName")
        }
        if !UserSetType.lastName.isRemoved {
            UserSetType.lastName = ParkingMetadata.EntityTypes.userSetType.property(withName: "lastName")
        }
        if !UserSetType.email.isRemoved {
            UserSetType.email = ParkingMetadata.EntityTypes.userSetType.property(withName: "email")
        }
        if !UserSetType.joinedAt.isRemoved {
            UserSetType.joinedAt = ParkingMetadata.EntityTypes.userSetType.property(withName: "joinedAt")
        }
        if !UserSetType.details.isRemoved {
            UserSetType.details = ParkingMetadata.EntityTypes.userSetType.property(withName: "details")
        }
        if !UserSetType.departmentID.isRemoved {
            UserSetType.departmentID = ParkingMetadata.EntityTypes.userSetType.property(withName: "departmentID")
        }
        if !UserSetType.vehicleType.isRemoved {
            UserSetType.vehicleType = ParkingMetadata.EntityTypes.userSetType.property(withName: "vehicleType")
        }
        if !UserSetType.seatsAvailable.isRemoved {
            UserSetType.seatsAvailable = ParkingMetadata.EntityTypes.userSetType.property(withName: "seatsAvailable")
        }
        if !UserSetType.parkingEnabled.isRemoved {
            UserSetType.parkingEnabled = ParkingMetadata.EntityTypes.userSetType.property(withName: "parkingEnabled")
        }
        if !UserSetType.carpoolEnabled.isRemoved {
            UserSetType.carpoolEnabled = ParkingMetadata.EntityTypes.userSetType.property(withName: "carpoolEnabled")
        }
        if !UserSetType.attendanceEnabled.isRemoved {
            UserSetType.attendanceEnabled = ParkingMetadata.EntityTypes.userSetType.property(withName: "attendanceEnabled")
        }
        if !UserSetType.active.isRemoved {
            UserSetType.active = ParkingMetadata.EntityTypes.userSetType.property(withName: "active")
        }
        if !UserSetType.reservations.isRemoved {
            UserSetType.reservations = ParkingMetadata.EntityTypes.userSetType.property(withName: "reservations")
        }
    }
}
