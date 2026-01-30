Profile: ATMessagingBundle
Parent: Bundle
Id: at-messaging-bundle
Title: "AT Messaging Message Bundle"
Description: "MessageBundle to be used for all messages transfered with the AT FHIR messaging."
* ^status = #draft
* id 1..1
* timestamp 1..1
* type = #message
* entry.fullUrl 1..1
* entry.fullUrl obeys uuid-only

Invariant: uuid-only
Description: "fullUrl must be a valid UUID"
Expression: "value.matches('^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$')"
Severity: #error
