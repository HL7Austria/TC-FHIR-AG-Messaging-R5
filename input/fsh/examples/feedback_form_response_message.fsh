Instance: ATMessagingFeedbackFormResponseExample
InstanceOf: Bundle
Title: "Ad-hoc response of a feedback form"
Description: "Feedback form submission as ad-hoc submitted message (without previous request)."
Usage: #example
* id = "c669729a-67af-453c-8b3f-ed05d754e506"
* meta.profile = Canonical(ATMessagingBundle)
* type = #message
* timestamp = "2026-04-14T07:12:01+02:00"
* entry[+]
  * fullUrl = "urn:uuid:7ea8b8eb-eeb3-4632-9a21-d6132fe093d6"
  * resource = AdHocQuestionnaireResponseMessageHeaderExample
* entry[+]
  * fullUrl = "urn:uuid:f58b0623-84a5-446e-9ecc-1a6f553233de"
  * resource = FeedbackQuestionnaireResponseExample
* entry[+]
  * fullUrl = "urn:uuid:71998612-308f-4062-8d7e-318c1b1ab1cc"
  * resource = HospitalFeedbackEndpointExample
* entry[+]
  * fullUrl = "urn:uuid:caee7722-8340-4716-a36e-837dbc13ea75"
  * resource = HospitalEndpointExample
* entry[+]
  * fullUrl = "urn:uuid:ab9ca6ac-b114-43a4-90eb-96070c1824ad"
  * resource = HospitalOrganizationExample
* entry[+]
  * fullUrl = "urn:uuid:1a6ed9fa-9ba7-41fa-9d79-24d669aa3273"
  * resource = HL7ATCorePatientExample01

Instance: AdHocQuestionnaireResponseMessageHeaderExample
InstanceOf: MessageHeader
Title: "MessageHeader of an ad-hoc message sending a questionnaire response."
Description: "Message header for sending a feedback form submission without prior request."
Usage: #example
* id = "7ea8b8eb-eeb3-4632-9a21-d6132fe093d6"
* meta.profile = Canonical(ATMessagingMessageHeader)
* eventCoding = ATMessagingEventType#questionnaireResponse
* destination
  * endpointReference = Reference(urn:uuid:caee7722-8340-4716-a36e-837dbc13ea75)
  * receiver = Reference(urn:uuid:ab9ca6ac-b114-43a4-90eb-96070c1824ad)
* source
  * endpointReference = Reference(urn:uuid:71998612-308f-4062-8d7e-318c1b1ab1cc)
  * name = "My Medical Feedback App"
  * software = "at.softwarecorp.medical.feedback"
  * version = "1.0.0"
  * contact
    * system = #email
    * value = "feedbackapp@softwarecorp.at"
* focus[+] = Reference(urn:uuid:f58b0623-84a5-446e-9ecc-1a6f553233de)
* definition = Canonical(ATMessagingQuestionnaireResponseMessageDefinition)
* sender = Reference(urn:uuid:ab9ca6ac-b114-43a4-90eb-96070c1824ad)
* author = Reference(urn:uuid:ab9ca6ac-b114-43a4-90eb-96070c1824ad)

Instance: FeedbackQuestionnaireResponseExample
InstanceOf: QuestionnaireResponse
Usage: #inline
* id = "f58b0623-84a5-446e-9ecc-1a6f553233de"
* questionnaire = "http://feedbackapp.softwarecorp.at/fhir/Questionnaire/feedback"
* status = #completed
* source = Reference(urn:uuid:1a6ed9fa-9ba7-41fa-9d79-24d669aa3273)
* item[+]
  * linkId = "q-satisfaction"
  * text = "How satisfied have you been with your stay?"
  * answer
    * valueInteger = 9
