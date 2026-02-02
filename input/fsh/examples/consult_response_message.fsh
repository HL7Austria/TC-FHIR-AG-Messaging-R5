Instance: ATMessagingConsultCommunicationExample
InstanceOf: Bundle
Title: "Consult communication"
Description: "Consultation document rejection as CommunicationRequest message."
Usage: #example
* id = "63874621-5550-410a-b893-ca890614cf6e"
* meta.profile = Canonical(ATMessagingBundle)
* type = #message
* timestamp = "2026-01-23T10:08:57+02:00"
* entry[+]
  * fullUrl = "urn:uuid:3a4c35bb-0cc3-449f-9912-5ed09143224b"
  * resource = CommunicationMessageHeaderExample
* entry[+]
  * fullUrl = "urn:uuid:08327a3a-1f52-4ec0-9b90-ac17fd6e06b2"
  * resource = CommunicationExample
* entry[+]
  * fullUrl = "urn:uuid:caee7722-8340-4716-a36e-837dbc13ea75"
  * resource = HospitalEndpointExample
* entry[+]
  * fullUrl = "urn:uuid:4707d4ab-0020-4cc9-8e0f-242f95ce31f3"
  * resource = GPEndpointExample
* entry[+]
  * fullUrl = "urn:uuid:c7090292-dc27-4d90-a500-7e4110217947"
  * resource = CommunicationRequestForBasedOnExample
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

Instance: CommunicationMessageHeaderExample
InstanceOf: MessageHeader
Title: "MessageHeader of a Communication."
Usage: #inline
* id = "3a4c35bb-0cc3-449f-9912-5ed09143224b"
* meta.profile = Canonical(ATMessagingMessageHeader)
* eventCoding = ATMessagingEventType#status
* destination
  * endpointReference = Reference(urn:uuid:4707d4ab-0020-4cc9-8e0f-242f95ce31f3)
  * receiver = Reference(urn:uuid:2d8fedd6-3ccf-4725-97b0-fa9e19cbd8fc)
* source
  * endpointReference = Reference(urn:uuid:caee7722-8340-4716-a36e-837dbc13ea75)
  * name = "Fancy KIS"
  * software = "at.softwarecorp.health.kis"
  * version = "2.0.0"
  * contact
    * system = #email
    * value = "kis.support@softwarecorp.at"
* focus[+] = Reference(urn:uuid:08327a3a-1f52-4ec0-9b90-ac17fd6e06b2)
* definition = Canonical(ATMessagingCommunicationMessageDefinition)
* sender = Reference(urn:uuid:f9ac6aa5-71b6-438b-a33b-b0b114d9deca)
* author = Reference(urn:uuid:f9ac6aa5-71b6-438b-a33b-b0b114d9deca)
* response
  * id = "cfb366e3-9405-4acf-a13d-4fb90a8a7b77"
  * identifier[+]
    * value = "urn:uuid:6df9d997-d34a-448b-944e-8721c49e0939"
  * code = #ok

Instance: CommunicationExample
InstanceOf: Communication
Title: "Communication Example"
Description: "Plain text message that kindly rejects a previous communication request."
Usage: #example
* id = "08327a3a-1f52-4ec0-9b90-ac17fd6e06b2"
* meta.profile = Canonical(ATMessagingCommunication)
* basedOn = Reference(urn:uuid:c7090292-dc27-4d90-a500-7e4110217947)
* status = #stopped
* payload
  * contentAttachment
    * contentType = #text/plain
    // Dear Dr. Huber, unfortunately this service is not available at the moment. Kind regards, Dr. Mayer
    * data = "RGVhciBEci4gSHViZXIsIHVuZm9ydHVuYXRlbHkgdGhpcyBzZXJ2aWNlIGlzIG5vdCBhdmFpbGFibGUgYXQgdGhlIG1vbWVudC4gS2luZCByZWdhcmRzLCBEci4gTWF5ZXI="

Instance: CommunicationRequestForBasedOnExample
InstanceOf: CommunicationRequest
Title: "CommunicationRequest for being referenced by the Communication"
Usage: #inline
* id = "c7090292-dc27-4d90-a500-7e4110217947"
* meta.profile = Canonical(ATMessagingCommunicationRequest)
* status = #active
* intent = #plan
* subject = Reference(urn:uuid:1a6ed9fa-9ba7-41fa-9d79-24d669aa3273)
