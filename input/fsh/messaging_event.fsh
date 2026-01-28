CodeSystem: ATMessagingEventType
Id: at-messaging-event-type
Description: "Event Coding for discriminating messages on the receiver."
* #request "Message to initiate a workflow to request an action or a communication." "Initial request for an action."
* #document "A document is sent." "The transfer of a document is the main purpose of the message."
* #status "The message is sent to transfer the status or result of an ongoing message flow (e.g. acknowledgement, service status update, ...)" "The transfer of a status update as a response to another message is the main purpose of the message."

ValueSet: ATMessagingEventTypeVS
Id: at-messaging-event-type-vs
Description: "Extensible ValueSet consisting of the Message Event Type Codings."
* include codes from system ATMessagingEventType
