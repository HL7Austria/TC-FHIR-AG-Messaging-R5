Instance: ATMessagingCommunicationMessageDefinition
InstanceOf: MessageDefinition
Usage: #definition
* url = Canonical(ATMessagingCommunicationMessageDefinition)
* id = "at-messaging-communication-message"
* version = "0.1.0"
* versionAlgorithmCoding = http://hl7.org/fhir/version-algorithm#semver
* name = "ATMessagingCommunicationMessage"
* title = "Communication over directed messaging."
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
* description = "Regulates the resources to be used in a directed message when transferring a Communication."
// * purpose = "TODO"
// * copyright = "TODO"
// * copyrightLabel = "TODO"
* eventCoding = ATMessagingEventType#status
* category = #currency
* focus[+]
  * code = #Communication
  * profile = Canonical(ATMessagingCommunication)
  * min = 1
  * max = "1"
* allowedResponse[+]
  * message = Canonical(ATMessagingCommunicationMessageDefinition)
  * situation = "As soon as the receiving system has processed the message successfully and the communication is answered."
* allowedResponse[+]
  * message = Canonical(ATMessagingDocumentMessageDefinition)
  * situation = "As soon as the receiving system has processed the message successfully and a document is sent as a result or answer of the communication."
