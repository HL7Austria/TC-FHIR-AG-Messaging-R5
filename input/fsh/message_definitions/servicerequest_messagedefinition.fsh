Instance: ATMessagingServiceRequestMessageDefinition
InstanceOf: MessageDefinition
Usage: #definition
* url = Canonical(ATMessagingServiceRequestMessageDefinition)
* id = "at-messaging-servicerequest-message"
* version = "0.1.0"
* versionAlgorithmCoding = http://hl7.org/fhir/version-algorithm#semver
* name = "ATMessagingServiceRequestMessage"
* title = "Service request over directed messaging."
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
* description = "Regulates the resources to be used in a directed message when performing a ServiceRequest."
// * purpose = "TODO"
// * copyright = "TODO"
// * copyrightLabel = "TODO"
* eventCoding = ATMessagingEventType#request
* category = #consequence
* focus[+]
  * code = #ServiceRequest
  * min = 1
  * max = "1"
* focus[+]
  * code = #Patient
  * profile = Canonical(at-core-patient)
  * min = 1
  * max = "1"
* focus[+]
  * code = #Encounter
  // TODO profile
  * min = 0
  * max = "1"
* allowedResponse[+]
  * message = Canonical(ATMessagingServiceStatusMessageDefinition)
  * situation = "As soon as the receiving system has processed the message successfully when the result of the ServiceRequest cannot be fulfilled, is not (yet) available and in error cases."
* allowedResponse[+]
  * message = Canonical(ATMessagingDocumentMessageDefinition)
  * situation = "As soon as the receiving system has processed the message successfully when the result of the ServiceRequest is available and can be transfered to the requesting party."
