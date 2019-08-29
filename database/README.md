# database

## Tables

Here you will find the tables and fields of each table constructed both for Microsoft Access and MySQL.
--

**medicine**
* idMedicine
* label
* quantity

--

**patient_header**
* idPatient
* name
* gender
* age
* obs
* surgeryType
* historyCardioRisk
* historyACP
* historyLee
* historyGoldman
* obsCR

--

**patient_medicine**
* idPatientMedicine
* *fk_idPatient*
* *fk_idMedicine*

--

**trial_patient**
* idTrial
* noSymptoms
* dyspnea
* headache
* toraxPain
* edemaMMII
* syncope
* palpitations
* recordHighBP
* recordThyroidDisease
* recordAshtmaBronchus
* recordPVM
* recordArrhythmia
* recordDyslipidemia
* recordDrugAlergy
* recordDMellitus
* recordCoronaryDisease
* recordCardCog
* CPETAS
* CPETAD
* CPEACV
* CPEAR
* CPEMMII
* ECG
* *fk_idPatient*

--

**tbl_cardio_risk**
* idTblCardioRisk
* PAS
* treatedPAS
* CT
* smoke
* HDLc
* statin
* *fk_idPatient*
* lowRisk
* mediumRisk
* highRisk
* veryHighRisk
* outcome
* goalPercentDecrease
* goalPercentDecreaseBottom
* goalLDLc
* goalNHDLc

--

**tbl_lee**
* idTblLee
* surgeryITVSI
* coronaryArterialDisease
* congestiveHeartFailure
* cerebrovascularDisease
* thresholdPreOpCreatinine
* *fk_idPatient*
* classI
* classII
* classIII
* classIV
* dMellitus

--

**tbl_goldman**
* idTblGoldman
* age
* thresholdMyocardialInfarction
* thirdSoundJugularStasis
* severeAorticStenosis
* preOpDRSinusalExtraSystSVECG
* thresholdDocExtraSystSVECG
* thresholdCompounds
* transHepatic
* bed
* surgeryAortaIPIT
* emergencySurgery
* *fk_idPatient*
* classI
* classII
* classIII
* classIV

--

**tbl_acp**
* idTblACP
* age
* thresholdMyocardialInfarction
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
* *fk_idPatient*
* highRisk
* mediumRisk
* lowRisk

---

Each risk assessment method has its own way of evaluating how relevant each variable is. However, there are overlaps among criteria from different methods. So in order to avoid redundancy, some fields are automatically filled according to a previously filled table, if the fields coincide.

Many fields are self-explanatory and need no further explanation, such as *age* and *sex*. Other fields need an extra explanation, such as *bed*, which means the patient is bedridden due to some illness. It is important to notice that every field starting with "threshold" is not only a boolean type, but also informs whether that specific criteria is currently under or over a certain value. Naturally, the values are provided by the method in use.

Some criteria were split into two or three fields. This was necessary due to the nature of the assessment algorithm, which may ask more than one relevant question in just one step. For instance, Goldman asks about farmaceutical compounds thresholds at the same time it asks about whether the  patient is bedridden and about their liver. The three questions, even though addressed in just one step, were divided and represented in three different fields, namely *thresholdCompounds*, *bed* and *transHepatic*.

Each field is linked to a variable that is filled by the physician during consultation. The majority of variables/fields is of boolean nature and the names were chosen to be as clear as possible for those who have intent to copy, modify or understand this project. If the relation of elements is not clear and the names are not meaningful enough, please refer to a specific website, by clicking [here](https://qxmd.com/calculate/calculator_195/revised-cardiac-risk-index-lee-criteria), [here](https://www.acponline.org/) and [here](https://reference.medscape.com/calculator/cardiac-risk-noncardiac-surgery-goldman)

Below you can see a screenshot of the tables relationship in Microsoft Access:

![cardio MS Access panorama](https://raw.githubusercontent.com/dallasferraz/cardio/master/database/dbaccess.png)

And here you can see a screenshot of the tables relationship in MySQL:

![cardio MySQL panorama](https://raw.githubusercontent.com/dallasferraz/cardio/master/database/dbmysql.png)
