-- create table campaign_performance

CREATE TABLE
  campaign_performance (
     id INT NOT NULL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    start_date DATE,
    end_date DATE,
    budget INT,
    spend INT,
    impressions INT,
    clicks INT,
    conversions INT,
    roi FLOAT);
	

-- Alter the date columns to suit us

ALTER TABLE
  campaign_performance ALTER COLUMN start_date
SET
  DATA TYPE DATE
USING
  start_date::date;



ALTER TABLE
  campaign_performance ALTER COLUMN end_date
SET
  DATA TYPE DATE
USING
end_date::date;
	