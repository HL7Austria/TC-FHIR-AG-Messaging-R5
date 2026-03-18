Instance: SenderActor
InstanceOf: ActorDefinition
Title: "Sender Actor"
Description: "The actor that assembles and submits the FHIR message."
Usage: #definition
* status = #draft
* type = #system
* name = "SenderActor"

Instance: ReceiverActor
InstanceOf: ActorDefinition
Title: "Receiver Actor"
Description: "The actor that receives, parses and disassembles the FHIR message."
Usage: #definition
* status = #draft
* type = #system
* name = "ReceiverActor"

RuleSet: ShallTransferObligation(path)
* {path} ^extension[http://hl7.org/fhir/StructureDefinition/obligation][+].extension[code].valueCode = #SHALL:populate
* {path} ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[actor][+].valueCanonical =  Canonical(SenderActor)
* {path} ^extension[http://hl7.org/fhir/StructureDefinition/obligation][+].extension[code].valueCode = #SHALL:handle
* {path} ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[actor][+].valueCanonical =  Canonical(ReceiverActor)

RuleSet: ShouldTransferObligation(path)
* {path} ^extension[http://hl7.org/fhir/StructureDefinition/obligation][+].extension[code].valueCode = #SHOULD:populate
* {path} ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[actor][+].valueCanonical =  Canonical(SenderActor)
* {path} ^extension[http://hl7.org/fhir/StructureDefinition/obligation][+].extension[code].valueCode = #SHALL:handle
* {path} ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[actor][+].valueCanonical =  Canonical(ReceiverActor)

RuleSet: ShouldSendObligation(path)
* {path} ^extension[http://hl7.org/fhir/StructureDefinition/obligation][+].extension[code].valueCode = #SHOULD:populate
* {path} ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[actor][+].valueCanonical =  Canonical(SenderActor)
