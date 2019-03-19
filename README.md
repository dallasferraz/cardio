# Cardiology clinic

A Delphi project for a cardiology clinic. The physician in charge can calculate how risky it is for the patient to undergo surgery and cardiac arrest based on personal information, such as gender, age, family history and so on.

The system is based on four different cardiac risk assessment, the first one being responsible for informing cardiac arrest chances, while the other three ouput pre-operation risk, according to the following chosen RCRI methods:

* Lee
* Goldman
* American College of Physicians (ACP)

## SQL file

### Tables

Here you will find the tables and fields of each table:

--

**medicine**
* idMedicine
* label

--

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

--

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

--

**tblLee**
* idTblLee
* patientLee
* surgeryITVSI
* coronaryArterialDisease
* congestiveHeartFailure
* cerebrovascularDisease
* preOpCreatinine

--

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

--

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

--

Each risk assessment method has its own way of evaluating how relevant each variable is. However, there are overlaps among criteria from different methods. So in order to avoid redundancy, some fields are automatically filled according to a previously filled table, if the fields coincide.

Many fields are self-explanatory and need no further explanation, such as *age* and *sex*. Other fields need an extra explanation, such as *bed*, which means the patient is bedridden due to some illness. It is important to notice that every field starting with "threshold" is not only a boolean type, but also informs whether that specific criteria is currently under or over a certain value. Naturally, the values are provided by the method in use.