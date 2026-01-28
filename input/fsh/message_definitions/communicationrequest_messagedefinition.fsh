Instance: ATMessagingCommunicationRequestMessageDefinition
InstanceOf: MessageDefinition
Usage: #definition
* url = Canonical(ATMessagingCommunicationRequestMessageDefinition)
* id = "at-messaging-communicationrequest-message"
* version = "0.1.0"
* versionAlgorithmCoding = http://hl7.org/fhir/version-algorithm#semver
* name = "ATMessagingCommunicationRequestMessage"
* title = "Communication request over directed messaging."
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
* description = "Regulates the resources to be used in a directed message when performing a CommunicationRequest."
// * purpose = "TODO"
// * copyright = "TODO"
// * copyrightLabel = "TODO"
* eventCoding = ATMessagingEventType#request
* category = #consequence
* focus[+]
  * code = #CommunicationRequest
  * profile = Canonical(ATMessagingCommunicationRequest)
  * min = 1
  * max = "1"
* focus[+]
  * code = #Patient
  * min = 1
  * max = "1"
  * profile = Canonical(at-core-patient)
* focus[+]
  * code = #Encounter
  // TODO profile
  * min = 0
  * max = "1"
* allowedResponse[+]
  * message = Canonical(ATMessagingCommunicationMessageDefinition)
  * situation = "As soon as the receiving system has processed the message successfully when the result of the CommunicationRequest cannot be fulfilled (yet) or is fulfilled through a Communication (e.g. telephone call or chat) and in error cases."
* allowedResponse[+]
  * message = Canonical(ATMessagingDocumentMessageDefinition)
  * situation = "As soon as the receiving system has processed the message successfully when the result of the CommunicationRequest is available as document and can be transfered to the requesting party."
