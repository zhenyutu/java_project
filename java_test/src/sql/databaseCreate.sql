CREATE DATABASE IF NOT EXISTS weichai_dataAnalysis DEFAULT CHARACTER SET utf8;

USE weichai_dataAnalysis;

# Unit表
DROP TABLE IF EXISTS Unit;
CREATE TABLE Unit(
ID BIGINT(8) NOT NULL,
Name NVARCHAR(100),
Factory BIGINT(8),
PRIMARY KEY(ID)
) DEFAULT CHARSET = utf8;

# Result表
DROP TABLE IF EXISTS Result;
CREATE TABLE Result(
ID BIGINT(8) NOT NULL,
UnitID BIGINT(8) NOT NULL,
ResultDateTime DATETIME NOT NULL,
ResultStatusTypeID BIGINT(8) NOT NULL,
ProgameName NVARCHAR(100) NOT NULL,
FinalAngle FLOAT(8),
FinalTorque FLOAT(8),
StartAngle FLOAT(8),
CalculatedAngle FLOAT(8),
TorqueLimitedLow FLOAT(8),
TorqueLimitedHigh FLOAT(8),
PRIMARY KEY(ID),
CONSTRAINT f_unit FOREIGN KEY (UnitID) REFERENCES Unit(ID)
) DEFAULT CHARSET = utf8;
