DROP TABLE Zip;
DROP TABLE Time;
DROP TABLE Sale;
DROP TABLE ProfitByYear;

CREATE TABLE Zip
(
    id number(10) PRIMARY KEY,
    code VARCHAR2(5) NOT NULL,
    state VARCHAR2(2) NOT NULL
);

CREATE TABLE Time
(
    id number(10) PRIMARY KEY,
    month number(2) NOT NULL,
    year number(4) NOT NULL
);

CREATE TABLE Sale
(
    id number(10) PRIMARY KEY,
    zip_id number(10),
    time_id number(10),
    CONSTRAINT fk_zip_id FOREIGN KEY (zip_id) REFERENCES Zip (id),
    CONSTRAINT fk_time_id FOREIGN KEY (time_id) REFERENCES Time (id)
);

CREATE TABLE ProfitByYear 
(
    year number(4) PRIMARY KEY,
    profit number(10)
);