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
use sampledb;
DELETE FROM sample_tbl;

INSERT INTO sample_tbl VALUES(1, 123456789012345678, 12345, 123.45, 1.2345);
INSERT INTO sample_tbl VALUES(2, -123456789012345678, -12345, -123.45, -1.2345);
INSERT INTO sample_tbl VALUES(3, 3, 3, 3, 3);
INSERT INTO sample_tbl VALUES(4, -4, -4, -4, -4);
INSERT INTO sample_tbl VALUES(5, 0.5, 12345, 123.456, 1.23456);
