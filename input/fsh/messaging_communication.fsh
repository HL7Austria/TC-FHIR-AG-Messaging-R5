Profile: ATMessagingCommunication
Parent: Communication
Id: at-messaging-communication
Title: "AT Messaging Communication"
Description: "Communication to be used for all communication messages transfered with the AT FHIR messaging."
* id 1..1
* basedOn 1..1
* basedOn only Reference(ATMessagingCommunicationRequest)
* payload 0..1 MS
  * content[x] only ATMessagingCommunicationAttachment
* note 0..0

Profile: ATMessagingCommunicationRequest
Parent: CommunicationRequest
Id: at-messaging-communication-request
Title: "AT Messaging CommunicationRequest"
Description: "CommunicationRequest to be used for all communication request messages transfered with the AT FHIR messaging."
* id 1..1
* payload 0..1 MS
  * content[x] only ATMessagingCommunicationAttachment
* note 0..0

Profile: ATMessagingCommunicationAttachment
Parent: Attachment
Id: at-messaging-communication-attachment
Title: "AT Messaging Communication Attachment"
Description: "Simple Attachment with base64 encoded content for communication over directed messaging."
* contentType 1..1 MS
* data 1..1 MS
* url 0..0
