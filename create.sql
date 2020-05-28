CREATE TABLE Cities1(
    patient_id integer,
    city_name char(30)
);

ALTER TABLE Cities1
ADD CONSTRAINT ... PRIMARY KEY (patient_id);

CREATE TABLE States(
    state_sex char(6)
);

ALTER TABLE Cities
ADD CONSTRAINT city_pr PRIMARY KEY (city_name);

CREATE TABLE Cities_Popularity(
    city_name char(20),
    patient_id integer,
    sex_name integer,
    age_name integer
);

ALTER TABLE Cities_Popularity
ADD CONSTRAINT city_fk FOREIGN KEY (city_name) REFERENCES Cities (city_name);

ALTER TABLE Citiesopularity
ADD CONSTRAINT  patient_fk FOREIGN KEY (patient_id) REFERENCES Cities1 (patient_id);
