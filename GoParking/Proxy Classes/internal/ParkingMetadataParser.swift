// # Proxy Compiler 19.1.0-995ae6-20190123

import Foundation
import SAPOData

internal class ParkingMetadataParser {
    internal static let options: Int = (CSDLOption.allowCaseConflicts | CSDLOption.disableFacetWarnings | CSDLOption.disableNameValidation | CSDLOption.processMixedVersions | CSDLOption.retainOriginalText | CSDLOption.ignoreUndefinedTerms)

    internal static let parsed: CSDLDocument = ParkingMetadataParser.parse()

    static func parse() -> CSDLDocument {
        let parser = CSDLParser()
        parser.logWarnings = false
        parser.csdlOptions = ParkingMetadataParser.options
        let metadata = parser.parseInProxy(ParkingMetadataText.xml, url: "kaust.services.parking")
        metadata.proxyVersion = "19.1.0-995ae6-20190123"
        return metadata
    }
}
