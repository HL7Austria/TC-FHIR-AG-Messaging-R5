CodeSystem: ATMessagingEventType
Id: at-messaging-event-type
Title: "AT Messaging Event Type"
Description: "Event Coding for discriminating messages on the receiver."
* ^caseSensitive = false
* ^experimental = false
* #request "Message to initiate a workflow to request an action or a communication." "Initial request for an action."
* #document "A document is sent." "The transfer of a document is the main purpose of the message."
* #status "The message is sent to transfer the status or result of an ongoing message flow (e.g. acknowledgement, service status update, ...)" "The transfer of a status update as a response to another message is the main purpose of the message."

ValueSet: ATMessagingEventTypeVS
Id: at-messaging-event-type-vs
Title: "AT Message Event Type ValueSet"
Description: "Extensible ValueSet consisting of the Message Event Type Codings."
* ^experimental = false
* include codes from system ATMessagingEventType
