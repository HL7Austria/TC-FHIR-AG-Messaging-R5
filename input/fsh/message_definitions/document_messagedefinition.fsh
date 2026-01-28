Instance: ATMessagingDocumentMessageDefinition
InstanceOf: MessageDefinition
Usage: #definition
* url = Canonical(ATMessagingDocumentMessageDefinition)
* id = "at-messaging-document-message"
* version = "0.1.0"
* versionAlgorithmCoding = http://hl7.org/fhir/version-algorithm#semver
* name = "ATMessagingDocumentMessage"
* title = "Document transfer over directed messaging."
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
* description = "Regulates the resources to be used in a directed message when transferring a document."
// * purpose = "TODO"
// * copyright = "TODO"
// * copyrightLabel = "TODO"
* eventCoding = ATMessagingEventType#document
* category = #consequence
* focus[+]
  * code = #DocumentReference
  * profile = Canonical(IHE.MHD.SimplifiedPublish.DocumentReference)
  * min = 1
  * max = "1"
* focus[+]
  * code = #Patient
  * profile = Canonical(at-core-patient)
  * min = 1
  * max = "1"
* focus[+]
  * code = #Encounter
  // TODO Profile
  * min = 0
  * max = "1"
* allowedResponse[+]
  * message = Canonical(ATMessagingCommunicationMessageDefinition)
  * situation = "As soon as the receiving system has processed the message successfully and further communication needed."
* allowedResponse[+]
  * message = Canonical(ATMessagingDocumentMessageDefinition)
  * situation = "As soon as the receiving system has processed the message successfully when the result of the ServiceRequest is available and can be transfered to the requesting party."
