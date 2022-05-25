CREATE TABLE PUBLIC.dateTimeTable (
dateCol date,
timeCol time,
timestampcol TIMESTAMP,
charToNumCol varchar(20)
);

SELECT
LEFT(TO_VARCHAR(date '2018-05-02', 'YYYY/MM/DD'), 1);

SELECT
LEFT(TO_VARCHAR(current_timestamp, 'YYYY/MM/DD HH:MI:SS'), 1);

SELECT
LEFT(TO_VARCHAR(time '10:30:45', 'HH:MI:SS'), 1);

SELECT
LEFT( cast(dateCol as varchar), 1)
FROM PUBLIC.dateTimeTable;

SELECT
LEFT(TO_VARCHAR(timeCol, 'HH:MI:SS'), 1)
FROM PUBLIC.dateTimeTable;

SELECT
LEFT(TO_VARCHAR(timestampcol, 'YYYY/MM/DD HH:MI:SS'), 1)
FROM PUBLIC.dateTimeTable;

SELECT
TO_NUMBER( charToNumCol, 38, 10)
FROM PUBLIC.dateTimeTable;

SELECT
CONVERT_TIMEZONE('GMT-5', TO_TIMESTAMP_LTZ(CURRENT_DATE || ' ' || timeCol))
FROM PUBLIC.dateTimeTable;