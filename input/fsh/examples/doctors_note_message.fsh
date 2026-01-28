Instance: ATMessagingDoctorsNoteDocumentMessageExample
InstanceOf: Bundle
Title: "Ad-hoc message of Doctors note"
Description: "Doctors note as ad-hoc submitted message (without previous request)."
Usage: #example
* id = "269f4c84-7762-47aa-b872-c4f927301485"
* meta.profile = Canonical(ATMessagingBundle)
* type = #message
* timestamp = "2026-01-21T12:51:14+02:00"
* entry[+]
  * fullUrl = "urn:uuid:89c89a84-bce7-4c5d-b6f6-49690eea5b06"
  * resource = AdHocDocumentMessageHeaderExample
* entry[+]
  * fullUrl = "urn:uuid:a60faa01-38ff-40e8-8194-e395741875cb"
  * resource = DoctorsNoteExample
* entry[+]
  * fullUrl = "urn:uuid:1a6ed9fa-9ba7-41fa-9d79-24d669aa3273"
  * resource = HL7ATCorePatientExample01
* entry[+]
  * fullUrl = "urn:uuid:4707d4ab-0020-4cc9-8e0f-242f95ce31f3"
  * resource = GPEndpointExample
* entry[+]
  * fullUrl = "urn:uuid:2d8fedd6-3ccf-4725-97b0-fa9e19cbd8fc"
  * resource = ExtramuralPractitionerExample
* entry[+]
  * fullUrl = "urn:uuid:caee7722-8340-4716-a36e-837dbc13ea75"
  * resource = HospitalEndpointExample
* entry[+]
  * fullUrl = "urn:uuid:318f29eb-9992-423f-a075-ba64f14a7961"
  * resource = HospitalPractitionerExample
* entry[+]
  * fullUrl = "urn:uuid:f9ac6aa5-71b6-438b-a33b-b0b114d9deca"
  * resource = HospitalPractitionerRoleExample
* entry[+]
  * fullUrl = "urn:uuid:ab9ca6ac-b114-43a4-90eb-96070c1824ad"
  * resource = HospitalOrganizationExample

Instance: AdHocDocumentMessageHeaderExample
InstanceOf: MessageHeader
Title: "MessageHeader of an ad-hoc message sending a document."
Usage: #example
* id = "89c89a84-bce7-4c5d-b6f6-49690eea5b06"
* meta.profile = Canonical(ATMessagingMessageHeader)
* eventCoding = ATMessagingEventType#document
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
* focus[+] = Reference(urn:uuid:a60faa01-38ff-40e8-8194-e395741875cb)
* definition = Canonical(ATMessagingDocumentMessageDefinition)
* sender = Reference(urn:uuid:f9ac6aa5-71b6-438b-a33b-b0b114d9deca)
* author = Reference(urn:uuid:f9ac6aa5-71b6-438b-a33b-b0b114d9deca)

Instance: DoctorsNoteExample
InstanceOf: DocumentReference
Usage: #inline
* meta.profile = Canonical(IHE.MHD.SimplifiedPublish.DocumentReference)
* id = "a60faa01-38ff-40e8-8194-e395741875cb"
* status = #current
* type = http://loinc.org#100478-7 "Internal medicine Outpatient Progress note"
* category = http://loinc.org#11506-3 "Progress note"
* subject = Reference(urn:uuid:1a6ed9fa-9ba7-41fa-9d79-24d669aa3273)
* date = "2026-01-21T15:00:00+02:00"
* author = Reference(HospitalPractitionerRoleExample)
* content
  * attachment
    * contentType = #application/pdf
    * language = #de
    * data = ""
    * creation = "2026-01-21T14:57:13+02:00"
* period
  * start = "2026-01-19"
  * end = "2026-01-20"
