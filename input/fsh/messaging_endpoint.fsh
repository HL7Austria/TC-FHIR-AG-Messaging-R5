Profile: ATMessagingEndpoint
Parent: Endpoint
Id: at-messaging-endpoint
Title: "AT Messaging Endpoint"
Description: "Endpoint for use in the Messaging systems for AT FHIR messaging."
* connectionType 1..1
* connectionType from ATMessagingEndpointTypeVS (preferred)
* address MS

CodeSystem: ATMessagingEndpointType
Id: at-messaging-endpoint-type
Title: "AT Messaging Endpoint Type"
Description: "Endpoint Type Coding to encode Messaging Systems the message is transported over."
* ^caseSensitive = false
* ^experimental = false
* #matrix "matrix" "Communication over matrix https://spec.matrix.org/"

ValueSet: ATMessagingEndpointTypeVS
Id: at-messaging-endpoint-type-vs
Title: "AT Messaging Endpoint Type ValueSet"
Description: "ValueSet of Endpoint Type Codings."
* ^experimental = false
* include codes from system ATMessagingEndpointType
* include http://terminology.hl7.org/CodeSystem/endpoint-connection-type#hl7-fhir-msg
