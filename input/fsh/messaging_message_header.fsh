Profile: ATMessagingMessageHeader
Parent: MessageHeader
Id: at-messaging-message-header
Title: "AT Messaging Message Header"
Description: "MessageHeader to be used for all messages transfered with the AT FHIR messaging."
* id 1..1
* event[x] only Coding
* eventCoding.code 1..1
* eventCoding.system 1..1
* eventCoding from ATMessagingEventTypeVS (extensible)
* destination 1..1
  * endpoint[x] only Reference(ATMessagingEndpoint)
  * endpointReference 1..1
  * receiver 1..1
  * receiver only Reference(at-core-practitioner or at-core-practitionerRole or at-core-organization)
* sender only Reference(at-core-practitioner or at-core-practitionerRole or at-core-organization)
* insert ShouldTransferObligation(sender)
* author only Reference(at-core-practitioner or at-core-practitionerRole or at-core-organization)
* insert ShouldTransferObligation(author)
* source
  * endpoint[x] only Reference(ATMessagingEndpoint)
  * endpointReference 1..1
  * name 1..1
  * version 1..1
  * insert ShouldSendObligation(software)
  * insert ShouldSendObligation(contact)
* definition 1..1
