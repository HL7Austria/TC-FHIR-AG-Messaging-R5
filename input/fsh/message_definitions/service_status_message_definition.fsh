Instance: ATMessagingServiceStatusMessageDefinition
InstanceOf: MessageDefinition
Usage: #definition
* url = Canonical(ATMessagingServiceStatusMessageDefinition)
* id = "at-messaging-service-status-message"
* version = "0.1.0"
* versionAlgorithmCoding = http://hl7.org/fhir/version-algorithm#semver
* name = "ATMessagingServiceStatusMessage"
* title = "Service status update over directed messaging."
* status = #draft
* date = "2026-01-21"
* publisher = "HL7® Austria, TC FHIR®"
* contact[+]
  * name = "HL7® Austria, TC FHIR®"
  * telecom[+]
    * system = #url
    * value = "https://hl7.at/technische-komitees/tc-fhir/"
  * telecom[+]
    * system = #email
    * value = "tc-fhir@hl7.at"
* description = "Regulates the resources to be used in a directed message when transferring a task status update of a ServiceRequest."
// * purpose = "TODO"
// * copyright = "TODO"
// * copyrightLabel = "TODO"
* eventCoding = ATMessagingEventType#status
* category = #currency
* focus[+]
  * code = #Task
  * profile = Canonical(ATMessagingTask)
  * min = 1
  * max = "1"
* responseRequired = #on-error
