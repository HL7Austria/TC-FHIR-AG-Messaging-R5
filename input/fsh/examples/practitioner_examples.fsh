Instance: ExtramuralPractitionerExample
InstanceOf: Practitioner
Usage: #inline
* id = "2d8fedd6-3ccf-4725-97b0-fa9e19cbd8fc"
* name
  * family = "Huber"
  * given = "Hannah"
  * prefix = "Dr. med."

Instance: HospitalPractitionerRoleExample
InstanceOf: PractitionerRole
Usage: #inline
* id = "f9ac6aa5-71b6-438b-a33b-b0b114d9deca"
* practitioner = Reference(urn:uuid:318f29eb-9992-423f-a075-ba64f14a7961)
* organization = Reference(urn:uuid:ab9ca6ac-b114-43a4-90eb-96070c1824ad)
* code = http://terminology.hl7.org/CodeSystem/practitioner-role#doctor
* specialty = http://snomed.info/sct#419192003

Instance: HospitalPractitionerExample
InstanceOf: Practitioner
Usage: #inline
* id = "318f29eb-9992-423f-a075-ba64f14a7961"
* name
  * family = "Alice"
  * given = "Auer"
  * prefix = "Dr. med."

Instance: HospitalOrganizationExample
InstanceOf: Organization
Usage: #inline
* id = "ab9ca6ac-b114-43a4-90eb-96070c1824ad"
* type = http://terminology.hl7.org/CodeSystem/organization-type#prov
* name = "Krankenhaus am Standort GmbH"

Instance: LabOrganizationExample
InstanceOf: Organization
Usage: #inline
* id = "b024548e-7baa-44e7-8862-0246bd96cf4b"
* type = http://terminology.hl7.org/CodeSystem/organization-type#prov
* name = "Speziallabor Wien und sonstwo GmbH"
