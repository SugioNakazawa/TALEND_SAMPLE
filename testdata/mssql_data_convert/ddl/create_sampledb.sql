-- 
CREATE DATABASE sampledb;

-- 
use sampledb;
CREATE TABLE sample_tbl (
    col1 INT NOT NULL PRIMARY KEY,
    col2 NUMERIC,
    col3 NUMERIC(5),
    col4 NUMERIC(5,2),
    col5 NUMERIC(5,4)
);
DELETE FROM sample_tbl;

INSERT INTO sample_tbl VALUES(1, 1, 1, 1, 1);
INSERT INTO sample_tbl VALUES(20, 20, 20.1, 20.1, 2.1);
INSERT INTO sample_tbl VALUES(300, 300, 300.1, 300.1, 3.1);
