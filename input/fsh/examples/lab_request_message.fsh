Instance: ATMessagingLabServiceRequestExample
InstanceOf: Bundle
Title: "Lab request"
Description: "Lab request as ServiceRequest message."
Usage: #example
* id = "96beaf3e-6e2f-40f4-b1d3-02b19c984fb1"
* meta.profile = Canonical(ATMessagingBundle)
* type = #message
* timestamp = "2026-01-27T21:38:50+02:00"
* entry[+]
  * fullUrl = "urn:uuid:777091de-488e-4b23-a283-3fcc2ec262a5"
  * resource = ServiceRequestMessageHeaderExample
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

Instance: ServiceRequestMessageHeaderExample
InstanceOf: MessageHeader
Title: "MessageHeader of a ServiceRequest."
Usage: #inline
* id = "777091de-488e-4b23-a283-3fcc2ec262a5"
* meta.profile = Canonical(ATMessagingMessageHeader)
* eventCoding = ATMessagingEventType#request
* destination
  * endpointReference = Reference(urn:uuid:aeaa7306-7d02-483d-bb50-7ca0f631b04a)
  * receiver = Reference(urn:uuid:b024548e-7baa-44e7-8862-0246bd96cf4b)
* source
  * endpointReference = Reference(urn:uuid:4707d4ab-0020-4cc9-8e0f-242f95ce31f3)
  * name = "My AIS"
  * software = "at.itbusiness.gp"
  * version = "1.2.3"
  * contact
    * system = #email
    * value = "office@itbusiness.at"
* focus[+] = Reference(urn:uuid:81fd7dbf-5207-4bc5-b7df-89e97dcbbb79)
* focus[+] = Reference(urn:uuid:1a6ed9fa-9ba7-41fa-9d79-24d669aa3273)
* definition = Canonical(ATMessagingServiceRequestMessageDefinition)
* sender = Reference(urn:uuid:2d8fedd6-3ccf-4725-97b0-fa9e19cbd8fc)
* author = Reference(urn:uuid:2d8fedd6-3ccf-4725-97b0-fa9e19cbd8fc)

Instance: ServiceRequestExample
InstanceOf: ServiceRequest
Title: "Lab ServiceRequest"
Description: "Service Request for a Blood Test."
Usage: #example
* id = "81fd7dbf-5207-4bc5-b7df-89e97dcbbb79"
* status = #active
* intent = #order
* subject = Reference(urn:uuid:1a6ed9fa-9ba7-41fa-9d79-24d669aa3273)
* category = http://snomed.info/sct#108252007 "Laboratory procedure"
* code = http://snomed.info/sct#396550006 "Blood test"
