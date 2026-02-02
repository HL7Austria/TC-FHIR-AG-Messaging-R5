Profile: ATMessagingMessageHeader
Parent: MessageHeader
Id: at-messaging-message-header
Title: "AT Messaging Message Header"
Description: "MessageHeader to be used for all messages transfered with the AT FHIR messaging."
* id 1..1
* event[x] only Coding
* eventCoding.code 1..1 MS
* eventCoding.system 1..1 MS
* eventCoding from ATMessagingEventTypeVS (extensible)
* destination 1..1
  * endpoint[x] only Reference(ATMessagingEndpoint)
  * endpointReference 1..1
  * receiver 1..1 MS // profile receiver to AT Core Practitioner/PractitionerRole?
* sender MS // profile sender to AT Core Practitioner/PractitionerRole?
* author MS // profile author to AT Core Practitioner/PractitionerRole?
* source
  * endpoint[x] only Reference(ATMessagingEndpoint)
  * endpointReference 1..1
  * name 1..1 MS
  * version 1..1 MS
  * software MS
  * contact MS
* definition 1..1 MS
