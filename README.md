# Cardiology clinic

A Delphi project for a cardiology clinic. The physician in charge can calculate how risky it is for the patient to undergo surgery and cardiac arrest based on personal information, such as gender, age, family history and so on.

## SQL file

### Tables

Here you will find the tables and fields of each table:

**medicine**
* idMedicine
* label

---

**patient_header**
* idPatient
* name
* gender
* age
* nMedicines
* patientCardioRisk
* patientLee
* patientGoldman
* patientACP
* obs

---

**tblCardioRisk**
* idTblCardioRisk
* patientCardioRisk
* ateroObstrIllness
* dMellitus
* dTypeI
* dTypeII
* plaqueCarotidUS
* ankleBrachialIndex
* calciumCoronaryScore
* abdominalAorticAneurysm
* chronicKidneyDisease
* LDLc
* systolicBloodPressure
* treatedSystolicBloodPressure
* smoke
* computerTomography
* HDLc
* statin

---

**tblLee**
* idTblLee
* patientLee
* surgeryITVSI
* coronaryArterialDisease
* congestiveHeartFailure
* cerebrovascularDisease
* preOpCreatinine

---

**tblGoldman**
* idTblGoldman
* patientGoldman
* age
* thresholdMyocardialInfaction
* thirdSoundJugularStasis
* severeAorticStenosis
* preOpDRSinusalExtraSystSVECG
* thresholdDocExtraSystSVECG
* thresholdCompounds
* transHepatic
* bed
* surgeryAortaIPIT
* emergencySurgery

---

**tblACP**
* idTblACP
* patientACP
* age
* thresholdMyocardialInfaction
* thresholdPrevMyocardialInfarction
* anginaIII
* anginaIV
* thresholdEdemaLungLW
* thresholdEdemaLungPrev
* severeAorticStenosis
* preOpDRSinusalExtraSystSVECG
* thresholdDocExtraSystSVECG
* thresholdCompounds
* bed
* emergencySurgery
* dMellitus
* QwavesECG
* congestiveHeartFailure
* ischemiaVarSTECG
* highBPLeftVentr

---

