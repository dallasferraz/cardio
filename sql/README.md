# SQL file

## Tables

Here you will find the tables and fields of each table:

![cardio SQL panorama](https://raw.githubusercontent.com/cardio/sql/sql.jpg)

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

**patient_medicine**
* idPatientMedicine
* *fk_idPatient*
* *fk_idMedicine*

--

**tbl_cardio_risk**
* idTblCardioRisk
* thresholdAteroObstrIllness
* dMellitus
* dTypeI
* dTypeII
* plaqueCarotidUS
* thresholdAnkleBrachialIndex
* calciumCoronaryScore
* abdominalAorticAneurysm
* thresholdChronicKidneyDisease
* thresholdLDLc
* systolicBloodPressure
* treatedSystolicBloodPressure
* smoke
* computerTomography
* HDLc
* statin
* *fk_patientCardioRisk*

--

**tbl_lee**
* idTblLee
* surgeryITVSI
* coronaryArterialDisease
* congestiveHeartFailure
* cerebrovascularDisease
* thresholdPreOpCreatinine
* *fk_patientLee*

--

**tbl_goldman**
* idTblGoldman
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
* *fk_patientGoldman*

--

**tbl_acp**
* idTblACP
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
* *fk_patientACP*

--

Each risk assessment method has its own way of evaluating how relevant each variable is. However, there are overlaps among criteria from different methods. So in order to avoid redundancy, some fields are automatically filled according to a previously filled table, if the fields coincide.

Many fields are self-explanatory and need no further explanation, such as *age* and *sex*. Other fields need an extra explanation, such as *bed*, which means the patient is bedridden due to some illness. It is important to notice that every field starting with "threshold" is not only a boolean type, but also informs whether that specific criteria is currently under or over a certain value. Naturally, the values are provided by the method in use.

Some criteria were split into two or three fields. This was necessary due to the nature of the assessment algorithm, which may ask more than one relevant question in just one step. For instance, Goldman asks about farmaceutical compounds thresholds at the same time it asks about whether the  patient is bedridden and about their liver. The three questions, even though addressed in just one step, were divided and represented in three different fields, namely *thresholdCompounds*, *bed* and *transHepatic*.

Each field is linked to a variable that is filled by the physician during consultation. The majority of variables/fields is of boolean nature and the names were chosen to be as clear as possible for those who have intent to copy, modify or understand this project. If the relation of elements is not clear and the names are not meaningful enough, please refer to a specific website, by clicking [here](https://qxmd.com/calculate/calculator_195/revised-cardiac-risk-index-lee-criteria), [here](https://www.acponline.org/) and [here](https://reference.medscape.com/calculator/cardiac-risk-noncardiac-surgery-goldman)
