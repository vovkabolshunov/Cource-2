CREATE TABLE Patient_Popularity(
    patient_id NUMBER not null,
    country_name VARCHAR2(50),
    bd_year NUMBER,
    CONSTRAINT PK_PATIENT_POPULARITY PRIMARY KEY (patient_id)
);

CREATE TABLE Cities(
    patient_id NUMBER not null,
    city_name VARCHAR2(50),
    CONSTRAINT PK_CITIES PRIMARY KEY (patient_id)
);

CREATE TABLE States(
    country_name VARCHAR2(50) not null,
    CONSTRAINT PK_STATES PRIMARY KEY (country_name)
);

ALTER TABLE Patient_Popularity
ADD CONSTRAINT  patient_fk FOREIGN KEY (patient_id) REFERENCES Cities (patient_id);

ALTER TABLE Patient_Popularity
ADD CONSTRAINT country_fk FOREIGN KEY (country_name) REFERENCES States (country_name);
