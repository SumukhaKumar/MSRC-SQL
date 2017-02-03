CREATE TABLE `actedby` (
  
`MOV_ID` int(3) DEFAULT NULL,
  
`NO_OF_ACTORS` int(3) DEFAULT NULL,
  
`Main_Actor` int(2) DEFAULT NULL,
  
`Supporting_actor` char(6) DEFAULT NULL,
  
PRIMARY KEY (`MOV_ID`, `Main_Actor`));  


CREATE TABLE `actors` (
  
`SL_NO` int(2) NOT NULL DEFAULT '0',
  
`AC_FNAME` varchar(30) DEFAULT NULL,
  
`AC_LNAME` varchar(10) DEFAULT NULL,
  
PRIMARY KEY (`SL_NO`));

CREATE TABLE `customer` (
  
`CUST_ID` int(3) NOT NULL,
  
`F_NAME` varchar(10) NOT NULL,
  
`M_NAME` varchar(10) DEFAULT NULL,
  
`L_NAME` varchar(10) NOT NULL,
  
`AGE` int(3) DEFAULT NULL,
  
`ADDRESS` varchar(50) NOT NULL,
  
PRIMARY KEY (`CUST_ID`));

CREATE TABLE `movie` (
  
`ID` int(3) NOT NULL DEFAULT '0',
  
`M_NAME` varchar(30) DEFAULT NULL,
  
`rating` varchar(5) DEFAULT NULL,
  
`AWARD` varchar(20) DEFAULT NULL,
  
`DIRECTOR` varchar(30) DEFAULT NULL,
  
`BOX_OFFICE` varchar(30) DEFAULT NULL,
  
`DURATION` double(3,2) DEFAULT NULL,
  
`LANG` varchar(10) DEFAULT NULL,
  
`RELEASE_YEAR` char(4) DEFAULT NULL,
  
`GENRE` varchar(50) DEFAULT NULL,
  
PRIMARY KEY (`ID`));


CREATE TABLE `purchase` (
  
`P_ID` int(3) NOT NULL DEFAULT '0',
  
`M_ID` int(3) DEFAULT NULL,
  
`AMOUNT` double(3,2) DEFAULT NULL,
  
`CS_ID` int(3) DEFAULT NULL,
  
`date_Sold` varchar(50) DEFAULT NULL,
  
PRIMARY KEY (`P_ID`));

CREATE TABLE `rent` (
  
`RENT_ID` int(3) NOT NULL DEFAULT '0',
  
`MO_ID` int(3) DEFAULT NULL,
  
`CU_ID` int(3) DEFAULT NULL,
  
`AMOUNT` double(3,2) DEFAULT NULL,
  
`borrow_date` varchar(10) DEFAULT NULL,
  
`return_Date` varchar(10) DEFAULT NULL,
  
`Selling_Operation` varchar(20) DEFAULT NULL,
  
PRIMARY KEY (`RENT_ID`));
  