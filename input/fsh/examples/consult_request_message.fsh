Instance: ATMessagingConsultCommunicationRequestExample
InstanceOf: Bundle
Title: "Consult request"
Description: "Consult request as CommunicationRequest message."
Usage: #example
* id = "6df9d997-d34a-448b-944e-8721c49e0939"
* meta.profile = Canonical(ATMessagingBundle)
* type = #message
* timestamp = "2026-01-23T09:14:03+02:00"
* entry[+]
  * fullUrl = "urn:uuid:27f868f4-d9d3-442d-84b9-985e617c1909"
  * resource = CommunicationRequestMessageHeaderExample
* entry[+]
  * fullUrl = "urn:uuid:caee7722-8340-4716-a36e-837dbc13ea75"
  * resource = HospitalEndpointExample
* entry[+]
  * fullUrl = "urn:uuid:4707d4ab-0020-4cc9-8e0f-242f95ce31f3"
  * resource = GPEndpointExample
* entry[+]
  * fullUrl = "urn:uuid:c7090292-dc27-4d90-a500-7e4110217947"
  * resource = CommunicationRequestExample
* entry[+]
  * fullUrl = "urn:uuid:1a6ed9fa-9ba7-41fa-9d79-24d669aa3273"
  * resource = HL7ATCorePatientExample01
* entry[+]
  * fullUrl = "urn:uuid:2d8fedd6-3ccf-4725-97b0-fa9e19cbd8fc"
  * resource = ExtramuralPractitionerExample

* entry[+]
  * fullUrl = "urn:uuid:318f29eb-9992-423f-a075-ba64f14a7961"
  * resource = HospitalPractitionerExample
* entry[+]
  * fullUrl = "urn:uuid:f9ac6aa5-71b6-438b-a33b-b0b114d9deca"
  * resource = HospitalPractitionerRoleExample
* entry[+]
  * fullUrl = "urn:uuid:ab9ca6ac-b114-43a4-90eb-96070c1824ad"
  * resource = HospitalOrganizationExample

Instance: CommunicationRequestMessageHeaderExample
InstanceOf: MessageHeader
Title: "MessageHeader of a CommunicationRequest."
Usage: #inline
* id = "27f868f4-d9d3-442d-84b9-985e617c1909"
* meta.profile = Canonical(ATMessagingMessageHeader)
* eventCoding = ATMessagingEventType#request
* destination
  * endpointReference = Reference(urn:uuid:caee7722-8340-4716-a36e-837dbc13ea75)
  * receiver = Reference(urn:uuid:f9ac6aa5-71b6-438b-a33b-b0b114d9deca)
* source
  * endpointReference = Reference(urn:uuid:4707d4ab-0020-4cc9-8e0f-242f95ce31f3)
  * name = "My AIS"
  * software = "at.itbusiness.gp"
  * version = "1.2.3"
  * contact
    * system = #email
    * value = "office@itbusiness.at"
* focus[+] = Reference(urn:uuid:c7090292-dc27-4d90-a500-7e4110217947)
* focus[+] = Reference(urn:uuid:1a6ed9fa-9ba7-41fa-9d79-24d669aa3273)
* definition = Canonical(ATMessagingCommunicationRequestMessageDefinition)
* sender = Reference(urn:uuid:2d8fedd6-3ccf-4725-97b0-fa9e19cbd8fc)
* author = Reference(urn:uuid:2d8fedd6-3ccf-4725-97b0-fa9e19cbd8fc)


Instance: CommunicationRequestExample
InstanceOf: CommunicationRequest
Title: "CommunicationRequest for a consultation document"
Usage: #example
* id = "c7090292-dc27-4d90-a500-7e4110217947"
* meta.profile = Canonical(ATMessagingCommunicationRequest)
* status = #active
* intent = #plan
* subject = Reference(urn:uuid:1a6ed9fa-9ba7-41fa-9d79-24d669aa3273)
* payload
  * contentAttachment
    * contentType = #text/plain
    // Dear colleage, please provide the consult document as disussed. BR
    * data = "RGVhciBjb2xsZWFnZSwgcGxlYXNlIHByb3ZpZGUgdGhlIGNvbnN1bHQgZG9jdW1lbnQgYXMgZGlzdXNzZWQuIEJS"
