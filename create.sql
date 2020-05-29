CREATE TABLE Cities1(
    patient_id integer,
    city_name char(30)
);

ALTER TABLE Cities1
ADD CONSTRAINT PATIENT PRIMARY KEY (patient_id);

CREATE TABLE States(
    state_sex char(6)
);

ALTER TABLE States
ADD CONSTRAINT city_pr PRIMARY KEY (state_sex);

CREATE TABLE Cities_Popularity(
    city_name char(20),
    patient_id integer,
    sex_name integer,
    age_name integer
);

ALTER TABLE Cities_Popularity
ADD CONSTRAINT city_fk FOREIGN KEY (city_name) REFERENCES Cities (city_name);

ALTER TABLE Cities_Popularity
ADD CONSTRAINT  patient_fk FOREIGN KEY (patient_id) REFERENCES Cities1 (patient_id);
