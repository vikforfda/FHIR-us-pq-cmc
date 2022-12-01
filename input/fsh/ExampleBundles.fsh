Alias: $LOINC = http://loinc.org
Alias: $SCT = http://snomed.info/sct
Alias: $PQCMC-SEC = http://hl7.org/fhir/us/pq-cmc/CodeSystem/pqcmc-comp-section-types
Alias: $SUBS-TYP = http://hl7.org/fhir/substance-name-type
Alias: $PQCMC-INGR-NAME-TYP = http://hl7.org/fhir/us/pq-cmc/CodeSystem/pqcmc-product-ingredient-name-type
Alias: $SUBS-REL-TYP = http://hl7.org/fhir/substance-relationship-type
Alias: $SUBS-STRUC-TECH = http://hl7.org/fhir/substance-structure-technique
Alias: $PQCMC-CHEM-STRUC-TYP = http://hl7.org/fhir/us/pq-cmc/ValueSet/pqcmc-chemical-structure-datafile-type-terminology
                               

CodeSystem: StrucRepresentationCS
Title: "Structure Representation Code system"
Description: "A brief vocabulary of Structure Representation terms"
* #SR001 "SR001" "SR001 definition"
* #SR002 "SR002" "SR002 definition"
* #SR003 "SR003" "SR003 definition"

//From Resource Profile: CMC eCTD 32S10 Document
Instance: 692a0fa0-cd2c-4ad8-bd6b-7879326103f3
InstanceOf: CMCeCTDDocument32S10
Title: "FHIR Document example of 32S10"
Description: "FHIR document bundle with the CMC eCTD 32S10 profiles"
Usage: #example

* type = #document
* timestamp = "2022-07-06T22:30:21Z"
// Composition 1
* entry[Composition].fullUrl = "urn:uuid:b55b8d97-63c5-433c-95cf-812af58aa5fb"
* entry[Composition].resource = b55b8d97-63c5-433c-95cf-812af58aa5fb
//  SubstanceDefinition 1..*
* entry[SubstanceDefinition].fullUrl = "urn:uuid:942fcdc9-8ab9-4f52-be6d-af549117d462"
* entry[SubstanceDefinition].resource = 942fcdc9-8ab9-4f52-be6d-af549117d462
* entry[SubstanceDefinition].fullUrl = "urn:uuid:4dd0bb7a-6507-4df5-b2a1-f0d78ee6bba1"
* entry[SubstanceDefinition].resource = 4dd0bb7a-6507-4df5-b2a1-f0d78ee6bba1
//* entry[SubstanceDefinition].fullUrl = "urn:uuid:SubstanceDefinition/54f18826-92fb-4afa-bbc8-fdefabbd027f"
//* entry[SubstanceDefinition].resource = 54f18826-92fb-4afa-bbc8-fdefabbd027f
//  Organization 1..*
* entry[Organization].fullUrl = "urn:uuid:17177734-4328-4f76-9b88-c014a9abc9e3"
* entry[Organization].resource = 17177734-4328-4f76-9b88-c014a9abc9e3
//  DocumentReference 0..*
* entry[DocumentReference].fullUrl = "urn:uuid:DocumentReference/fe3f13c1-f0ac-4b40-8024-f4386e290dfc"
* entry[DocumentReference].resource = fe3f13c1-f0ac-4b40-8024-f4386e290dfc
//  Composition 1
//* entry[0]
//  * insert bundleEntry(Composition, b55b8d97-63c5-433c-95cf-812af58aa5fb)
//  SubstanceDefinition 1..*
//* entry[+]
//  * insert bundleEntry(SubstanceDefinition, 942fcdc9-8ab9-4f52-be6d-af549117d462)
//* entry[+]
//  * insert bundleEntry(SubstanceDefinition, 4dd0bb7a-6507-4df5-b2a1-f0d78ee6bba1)
//  Organization 1..*
//* entry[+]
//  * insert bundleEntry(Organization, 17177734-4328-4f76-9b88-c014a9abc9e3)
//  DocumentReference 0..*
//* entry[+]
//  * insert bundleEntry(DocumentReference, fe3f13c1-f0ac-4b40-8024-f4386e290dfc)

//From Resource profile: eCTD Substance General Information
Instance: b55b8d97-63c5-433c-95cf-812af58aa5fb
InstanceOf: EctdComposition32S10
Title: "The fields needed to represent the Substance Nomenclature and Structure to be included in the 3.2.S.1.0 folder of the eCTD"
Description: "The fields needed to represent the Substance Nomenclature and Structure to be included in the 3.2.S.1.0 folder of the eCTD"
Usage: #inline

* status = #final
* type = $PQCMC-SEC#32S10 "Substance General Information"
* date = "2022-11-18"
* author = Reference(17177734-4328-4f76-9b88-c014a9abc9e3)
* title = "EctdComposition32S10 Title"
* section[SubstanceNomenclature]
  //* id = "02462ee3-80e6-4f73-ae2b-b42befaaf4d4"
  * title = "PQCMC Comp Section 32S11 Substance nomenclature"
  * code = $PQCMC-SEC#32S11 "Substance Nomenclature"
  * entry = Reference(942fcdc9-8ab9-4f52-be6d-af549117d462)
* section[SubstanceStructure]
  //* id = "b51d35de-8a39-4710-84f4-4f7a413fa06b"
  * title = "PQCMC Comp Section 32S12 Substance Representational Structure"
  * code = $PQCMC-SEC#32S12 "Substance Structure"
  * entry = Reference(4dd0bb7a-6507-4df5-b2a1-f0d78ee6bba1)

//From Resource Profile: Substance Nomenclature
Instance: 942fcdc9-8ab9-4f52-be6d-af549117d462
InstanceOf: DrugSubstanceNomenclature
Title: "Drug Substance (Active Ingredient) nomenclature. Profile on Drug Substance profile"
Description: "Drug Substance (Active Ingredient) nomenclature. Profile on Drug Substance profile"
Usage: #inline

* manufacturer = Reference(17177734-4328-4f76-9b88-c014a9abc9e3)
* name[usan]
  * name = "ABC USAN"
  * type = $PQCMC-INGR-NAME-TYP#USAN "USAN"
* name[isbt]
  * name = "ABC ISBT"
  * type = $PQCMC-INGR-NAME-TYP#ISBT "ISBT 128"
* name[comp]
  * name = "ABC COMP"
  * type = $PQCMC-INGR-NAME-TYP#Company "Company ID/Code"
//Structure
* structure.technique = $SUBS-STRUC-TECH#HPLC "HPLC"
* structure.technique.text = "Substance Nomenclature Technique text"
* structure.representation.type = StrucRepresentationCS#SR002 "SR002 definition"
* relationship.substanceDefinitionReference = Reference(7cdbd2af-235c-40e2-934e-9e60598a4156)
* relationship.type = $SUBS-REL-TYP#Salt "Salt to parent"

//From Resource Profile: Drug Substance Structures
Instance: 4dd0bb7a-6507-4df5-b2a1-f0d78ee6bba1
InstanceOf: DrugSubstanceRepresentationalStructure
Title: "Drug Substance (Active Ingredient) Representational Structures. Profile on Drug Substance profile"
Description: "Drug Substance (Active Ingredient) Representational Structures. Profile on Drug Substance profile"
Usage: #inline

* manufacturer = Reference(17177734-4328-4f76-9b88-c014a9abc9e3)
//Structure
* structure.technique = $SUBS-STRUC-TECH#X-Ray "X-Ray"
* structure.technique.text = "Drug Substance Representational Structures Technique text"
* structure.representation.type = StrucRepresentationCS#SR001 "SR001 definition"
* name[sub]
  * name = "Generic name PQR"
  * type = $PQCMC-INGR-NAME-TYP#138 "Generic"

//From Resource Profile: SponsorOrganization
Instance: 17177734-4328-4f76-9b88-c014a9abc9e3
InstanceOf: SponsorOrganization
Title: "A profile for the data elements required to identify the sponsor of the drug products or substances"
Description: "A profile for the data elements required to identify the sponsor of the drug products or substances"
Usage: #inline


* name = "ABC Sponsor organization" 
//Slicing of Identifier
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3517361d-cb89-4163-adeb-1c57f6cdb98d"
//PqAddress
* contact.address.line = "Address line1"
* contact.address.city = "Princeton"
* contact.address.postalCode = "12345"
* contact.address.country = "USA"


//From Resource Profile: Base64DocumentReference
Instance: fe3f13c1-f0ac-4b40-8024-f4386e290dfc
InstanceOf: Base64DocumentReference
Title: "A profile that represents the document or diagram in base64"
Description: "A profile that represents the document or diagram in base64"

* status = #current
* content.attachment.contentType = #text/plain
* content.attachment.data = "PHNhbXBsZT48L3NhbXBsZT4="
* content.attachment.title = "Base64DocumentReference Title"

//From Resource Profile: Polymorphic Form 
Instance: 7cdbd2af-235c-40e2-934e-9e60598a4156
InstanceOf: PolymorphicForm
Title: "Alternate structure present in the drug substance"
Description: "Alternate structure present in the drug substance"

//Structure
* structure.technique = $SUBS-STRUC-TECH#HPLC "HPLC"
* structure.technique.text = "Polymorphic Form Technique text"
* structure.representation.type = StrucRepresentationCS#SR003 "SR003 definition"