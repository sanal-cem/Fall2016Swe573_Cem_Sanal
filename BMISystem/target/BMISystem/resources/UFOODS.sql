CREATE TABLE UFOODS
(	UNAME VARCHAR(64),
	FDATE DATE,
	FOFFSET INT,
	FGROUP VARCHAR(64),
	FNAME VARCHAR(128),
	FNDBNO VARCHAR(32),
    FDS VARCHAR(32),
    FMEASURE VARCHAR(64),
	FUNIT VARCHAR(16),
	FCALORY FLOAT,
	AMOUNT INT,
    PRIMARY KEY (FDATE, FNAME)
);