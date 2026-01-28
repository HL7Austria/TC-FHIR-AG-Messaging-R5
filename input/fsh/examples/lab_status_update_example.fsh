Instance: ATMessagingLabStatusUpdateExample
InstanceOf: Bundle
Title: "Lab status update"
Description: "Lab status update as service status update message."
Usage: #example
* id = "ab66186f-9d91-44b9-8459-bdee4e850bac"
* meta.profile = Canonical(ATMessagingBundle)
* type = #message
* timestamp = "2026-01-27T21:43:17+02:00"
* entry[+]
  * fullUrl = "urn:uuid:ce31aba7-7752-4a14-ae20-6be4705cd5b9"
  * resource = ServiceUpdateMessageHeaderExample
* entry[+]
  * fullUrl = "urn:uuid:1060eb80-e952-4ad8-82a1-78209fc5ab61"
  * resource = LabTaskExample
* entry[+]
  * fullUrl = "urn:uuid:aeaa7306-7d02-483d-bb50-7ca0f631b04a"
  * resource = LabEndpointExample
* entry[+]
  * fullUrl = "urn:uuid:4707d4ab-0020-4cc9-8e0f-242f95ce31f3"
  * resource = GPEndpointExample
* entry[+]
  * fullUrl = "urn:uuid:81fd7dbf-5207-4bc5-b7df-89e97dcbbb79"
  * resource = ServiceRequestExample
* entry[+]
  * fullUrl = "urn:uuid:1a6ed9fa-9ba7-41fa-9d79-24d669aa3273"
  * resource = HL7ATCorePatientExample01
* entry[+]
  * fullUrl = "urn:uuid:2d8fedd6-3ccf-4725-97b0-fa9e19cbd8fc"
  * resource = ExtramuralPractitionerExample
* entry[+]
  * fullUrl = "urn:uuid:b024548e-7baa-44e7-8862-0246bd96cf4b"
  * resource = LabOrganizationExample

Instance: ServiceUpdateMessageHeaderExample
InstanceOf: MessageHeader
Title: "MessageHeader of a Lab Service Update."
Usage: #inline
* id = "ce31aba7-7752-4a14-ae20-6be4705cd5b9"
* meta.profile = Canonical(ATMessagingMessageHeader)
* eventCoding = ATMessagingEventType#status
* destination
  * endpointReference = Reference(urn:uuid:4707d4ab-0020-4cc9-8e0f-242f95ce31f3)
  * receiver = Reference(urn:uuid:2d8fedd6-3ccf-4725-97b0-fa9e19cbd8fc)
* source
  * endpointReference = Reference(urn:uuid:aeaa7306-7d02-483d-bb50-7ca0f631b04a)
  * name = "Lab LIMS"
  * software = "com.lablims.lims"
  * version = "28"
  * contact
    * system = #email
    * value = "info@lablims.com"
* focus[+] = Reference(LabTaskExample)
* definition = Canonical(ATMessagingServiceStatusMessageDefinition)
* sender = Reference(urn:uuid:b024548e-7baa-44e7-8862-0246bd96cf4b)
* author = Reference(urn:uuid:b024548e-7baa-44e7-8862-0246bd96cf4b)
* response
  * id = "01db7850-4ad8-4d2c-b0a3-6e99004fe8ce"
  * identifier[+]
    * value = "urn:uuid:96beaf3e-6e2f-40f4-b1d3-02b19c984fb1"
  * code = #ok

Instance: LabTaskExample
InstanceOf: Task
Title: "Task that represents the blood specimen lab which is in progress."
Usage: #inline
* id = "1060eb80-e952-4ad8-82a1-78209fc5ab61"
* meta.profile = Canonical(ATMessagingTask)
* basedOn = Reference(urn:uuid:81fd7dbf-5207-4bc5-b7df-89e97dcbbb79)
* status = #in-progress
* intent = #order
