Profile: ATMessagingTask
Parent: Task
Id: at-messaging-task
Title: "AT Messaging Task"
Description: "Task to be used for all service status messages transfered with the AT FHIR messaging."
* id 1..1
* basedOn 1..1
* basedOn only Reference(ServiceRequest)
