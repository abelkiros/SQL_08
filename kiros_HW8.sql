/*-------------------------------------------------------Query1--------------------------------------------------------------------------------------------*/

mysql> SELECT statecode FROM EMPLOYER
    -> UNION
    -> SELECT location FROM Quarter;
--------------
SELECT statecode FROM EMPLOYER
UNION
SELECT location FROM Quarter
--------------

+-----------+
| statecode |
+-----------+
| AL        |
| CA        |
| CO        |
| CT        |
| FL        |
| GA        |
| MA        |
| MI        |
| NJ        |
| NV        |
| NY        |
| OH        |
| PA        |
| SC        |
| TX        |
| VA        |
+-----------+
16 rows in set (0.01 sec)

/*-------------------------------------------------------Query2--------------------------------------------------------------------------------------------*/

mysql> Select employer.companyname, employer.division, employer.statecode, interview.salaryoffered
    -> 
    -> FROM employer inner join interview
    -> 
    -> ON interview.companyname= employer.companyname;
--------------
Select employer.companyname, employer.division, employer.statecode, interview.salaryoffered

FROM employer inner join interview

ON interview.companyname= employer.companyname
--------------

+------------------------------+------------------+-----------+---------------+
| companyname                  | division         | statecode | salaryoffered |
+------------------------------+------------------+-----------+---------------+
| Acme Information Source      | Customer Support | OH        |         12.00 |
| Braddock Information Assoc.  | Payroll          | MA        |         10.75 |
| Ajax Software, Inc.          | Production       | CA        |         11.00 |
| Ajax Software, Inc.          | RandD            | CA        |         11.00 |
| Ajax Software, Inc.          | Production       | CA        |         11.50 |
| Ajax Software, Inc.          | RandD            | CA        |         11.50 |
| Bay Software Inc.            | Production       | CA        |         11.75 |
| Bay Software Inc.            | RandD            | CA        |         11.75 |
| Vegas Programming and Design | Development      | NV        |         11.00 |
| Mountainside Magic Software  | Customer Support | CO        |         11.50 |
| Mountainside Magic Software  | Management       | CO        |         11.50 |
| Mountainside Magic Software  | Customer Support | CO        |         10.75 |
| Mountainside Magic Software  | Management       | CO        |         10.75 |
| Cameron Industries           | Customer Support | TX        |         13.25 |
| Cameron Industries           | Management       | TX        |         13.25 |
| Cameron Industries           | Customer Support | TX        |         13.00 |
| Cameron Industries           | Management       | TX        |         13.00 |
| CCC Software                 | Production       | NY        |         11.50 |
| DC Security Applications     | RandD            | VA        |         11.50 |
| Davis-Klein Software         | RandD            | NY        |         11.25 |
| Flordia Software Designs     | Development      | FL        |         11.75 |
| Flordia Software Designs     | RandD            | FL        |         11.75 |
| Rochester Software Design    | Development      | NY        |         12.00 |
| Focused Applications, Inc.   | Production       | SC        |         12.00 |
| Georgia Software Design      | RandD            | GA        |         11.75 |
| ApplDesign                   | RandD            | AL        |         11.50 |
| Long Island Apps, Inc.       | Development      | NY        |         12.25 |
| Jersey Computer Services     | Customer Support | NJ        |         12.50 |
| Flordia Software Designs     | Development      | FL        |         12.75 |
| Flordia Software Designs     | RandD            | FL        |         12.75 |
| Manhattan-Made Software      | Customer Support | NY        |         12.50 |
| Manhattan-Made Software      | Payroll          | NY        |         12.50 |
| Manhattan-Made Software      | Customer Support | NY        |         13.25 |
| Manhattan-Made Software      | Payroll          | NY        |         13.25 |
| Nantucket Applications, Inc. | RandD            | MA        |         13.00 |
| PennState Programming, Inc.  | Management       | PA        |         13.00 |
| Sandy Shore Software         | Development      | CT        |         12.75 |
| Buffalo Software Assoc.      | Payroll          | NY        |         12.75 |
| Virginia Software Industries | Production       | VA        |         13.75 |
+------------------------------+------------------+-----------+---------------+
39 rows in set (0.00 sec)



/*-------------------------------------------------------Query3--------------------------------------------------------------------------------------------*/

mysql> SELECT statecode,description FROM state WHERE statecode NOT IN(SELECT statecode FROM employer);
--------------
SELECT statecode,description FROM state WHERE statecode NOT IN(SELECT statecode FROM employer)
--------------

+-----------+--------------------------------+
| statecode | description                    |
+-----------+--------------------------------+
| AK        | ALASKA                         |
| AR        | ARKANSAS                       |
| AS        | AMERICAN SAMOA                 |
| AZ        | ARIZONA                        |
| DC        | DISTRICT OF COLUMBIA           |
| DE        | DELAWARE                       |
| FM        | FEDERATED STATES OF MICRONESIA |
| GU        | GUAM                           |
| HI        | HAWAII                         |
| IA        | IOWA                           |
| ID        | IDAHO                          |
| IL        | ILLINOIS                       |
| IN        | INDIANA                        |
| KS        | KANSAS                         |
| KY        | KENTUCKY                       |
| LA        | LOUISIANA                      |
| MD        | MARYLAND                       |
| ME        | MAINE                          |
| MH        | MARSHALL ISLANDS               |
| MN        | MINNESOTA                      |
| MO        | MISSOURI                       |
| MP        | NORTHERN MARIANA ISLANDS       |
| MS        | MISSISSIPPI                    |
| MT        | MONTANA                        |
| NC        | NORTH CAROLINA                 |
| ND        | NORTH DAKOTA                   |
| NE        | NEBRASKA                       |
| NH        | NEW HAMPSHIRE                  |
| NM        | NEW MEXICO                     |
| OK        | OKLAHOMA                       |
| OR        | OREGON                         |
| PR        | PUERTO RICO                    |
| PW        | PALAU                          |
| RI        | RHODE ISLAND                   |
| SD        | SOUTH DAKOTA                   |
| TN        | TENNESSEE                      |
| UT        | UTAH                           |
| VI        | VIRGIN ISLANDS                 |
| VT        | VERMONT                        |
| WA        | WASHINGTON                     |
| WI        | WISCONSIN                      |
| WV        | WEST VIRGINIA                  |
| WY        | WYOMING                        |
+-----------+--------------------------------+
43 rows in set (0.00 sec)

/*-------------------------------------------------------Query4--------------------------------------------------------------------------------------------*/

mysql> SELECT DISTINCT companyname, minhrsoffered FROM INTERVIEW;
--------------
SELECT DISTINCT companyname, minhrsoffered FROM INTERVIEW
--------------

+------------------------------+---------------+
| companyname                  | minhrsoffered |
+------------------------------+---------------+
| Acme Information Source      |            40 |
| Braddock Information Assoc.  |            40 |
| Ajax Software, Inc.          |            40 |
| Bay Software Inc.            |            20 |
| Vegas Programming and Design |            40 |
| Mountainside Magic Software  |            20 |
| Mountainside Magic Software  |            40 |
| Cameron Industries           |            35 |
| CCC Software                 |            40 |
| DC Security Applications     |            30 |
| Davis-Klein Software         |            20 |
| Flordia Software Designs     |            30 |
| Rochester Software Design    |            30 |
| Focused Applications, Inc.   |            30 |
| Georgia Software Design      |            40 |
| ApplDesign                   |            30 |
| Long Island Apps, Inc.       |            40 |
| Jersey Computer Services     |            35 |
| Manhattan-Made Software      |            40 |
| Nantucket Applications, Inc. |            40 |
| PennState Programming, Inc.  |            40 |
| Sandy Shore Software         |            35 |
| Buffalo Software Assoc.      |            35 |
| Virginia Software Industries |            40 |
+------------------------------+---------------+
24 rows in set (0.00 sec)

mysql> 








/*-------------------------------------------------------Query5--------------------------------------------------------------------------------------------*/
mysql> SELECT statecode, description FROM state
    -> WHERE description LIKE '__a%' OR
    -> description LIKE '__e%' OR
    -> description LIKE '__i%' OR
    -> description LIKE '__o%' OR
    -> description LIKE '__u%' ;
--------------
SELECT statecode, description FROM state
WHERE description LIKE '__a%' OR
description LIKE '__e%' OR
description LIKE '__i%' OR
description LIKE '__o%' OR
description LIKE '__u%'
--------------

+-----------+----------------+
| statecode | description    |
+-----------+----------------+
| AK        | ALASKA         |
| AL        | ALABAMA        |
| AS        | AMERICAN SAMOA |
| AZ        | ARIZONA        |
| FL        | FLORIDA        |
| GA        | GEORGIA        |
| GU        | GUAM           |
| ID        | IDAHO          |
| LA        | LOUISIANA      |
| ME        | MAINE          |
| OH        | OHIO           |
| OR        | OREGON         |
| PR        | PUERTO RICO    |
| RI        | RHODE ISLAND   |
| SC        | SOUTH CAROLINA |
| SD        | SOUTH DAKOTA   |
| UT        | UTAH           |
| WY        | WYOMING        |
+-----------+----------------+
18 rows in set (0.00 sec)
/*-------------------------------------------------------Query6--------------------------------------------------------------------------------------------*/

mysql> SELECT distinct q.qtrcode, q.location, s.description 
FROM quarter q, state s, employer e 
WHERE q.location = e.statecode AND e.statecode = s.statecode;
--------------
SELECT distinct q.qtrcode, q.location, s.description 
FROM quarter q, state s, employer e 
WHERE q.location = e.statecode AND e.statecode = s.statecode
--------------

+---------+----------+---------------+
| qtrcode | location | description   |
+---------+----------+---------------+
| 19953   | CA       | CALIFORNIA    |
| 19963   | MA       | MASSACHUSETTS |
| 19951   | NY       | NEW YORK      |
| 19961   | NY       | NEW YORK      |
| 19964   | NY       | NEW YORK      |
+---------+----------+---------------+
5 rows in set (0.00 sec)
/*-------------------------------------------------------Query7--------------------------------------------------------------------------------------------*/

mysql> Select description, companyname
    -> from state LEFT JOIN employer
    -> ON state.statecode=employer.statecode;
--------------
Select description, companyname
from state LEFT JOIN employer
ON state.statecode=employer.statecode
--------------

+--------------------------------+--------------------------------+
| description                    | companyname                    |
+--------------------------------+--------------------------------+
| ALASKA                         | NULL                           |
| ALABAMA                        | ApplDesign                     |
| ARKANSAS                       | NULL                           |
| AMERICAN SAMOA                 | NULL                           |
| ARIZONA                        | NULL                           |
| CALIFORNIA                     | Ajax Software, Inc.            |
| CALIFORNIA                     | Ajax Software, Inc.            |
| CALIFORNIA                     | Bay Software Inc.              |
| CALIFORNIA                     | Bay Software Inc.              |
| COLORADO                       | Mountainside Magic Software    |
| COLORADO                       | Mountainside Magic Software    |
| CONNECTICUT                    | Sandy Shore Software           |
| DISTRICT OF COLUMBIA           | NULL                           |
| DELAWARE                       | NULL                           |
| FLORIDA                        | Flordia Software Designs       |
| FLORIDA                        | Flordia Software Designs       |
| FEDERATED STATES OF MICRONESIA | NULL                           |
| GEORGIA                        | Georgia Software Design        |
| GUAM                           | NULL                           |
| HAWAII                         | NULL                           |
| IOWA                           | NULL                           |
| IDAHO                          | NULL                           |
| ILLINOIS                       | NULL                           |
| INDIANA                        | NULL                           |
| KANSAS                         | NULL                           |
| KENTUCKY                       | NULL                           |
| LOUISIANA                      | NULL                           |
| MASSACHUSETTS                  | Braddock Information Assoc.    |
| MASSACHUSETTS                  | Nantucket Applications, Inc.   |
| MARYLAND                       | NULL                           |
| MAINE                          | NULL                           |
| MARSHALL ISLANDS               | NULL                           |
| MICHIGAN                       | Michigan Application Design    |
| MINNESOTA                      | NULL                           |
| MISSOURI                       | NULL                           |
| NORTHERN MARIANA ISLANDS       | NULL                           |
| MISSISSIPPI                    | NULL                           |
| MONTANA                        | NULL                           |
| NORTH CAROLINA                 | NULL                           |
| NORTH DAKOTA                   | NULL                           |
| NEBRASKA                       | NULL                           |
| NEW HAMPSHIRE                  | NULL                           |
| NEW JERSEY                     | Jersey Computer Services       |
| NEW MEXICO                     | NULL                           |
| NEVADA                         | Vegas Programming and Design   |
| NEW YORK                       | Buffalo Software Assoc.        |
| NEW YORK                       | CCC Software                   |
| NEW YORK                       | Davis-Klein Software           |
| NEW YORK                       | Long Island Apps, Inc.         |
| NEW YORK                       | Manhattan-Made Software        |
| NEW YORK                       | Manhattan-Made Software        |
| NEW YORK                       | Midtown Software Development   |
| NEW YORK                       | Rochester Application Software |
| NEW YORK                       | Rochester Software Design      |
| NEW YORK                       | Western New York Applications  |
| NEW YORK                       | Yankee Software                |
| NEW YORK                       | Yankee Software                |
| NEW YORK                       | Yankee Software                |
| OHIO                           | Acme Information Source        |
| OKLAHOMA                       | NULL                           |
| OREGON                         | NULL                           |
| PENNSYLVANIA                   | PennState Programming, Inc.    |
| PENNSYLVANIA                   | PSWD, Inc.                     |
| PUERTO RICO                    | NULL                           |
| PALAU                          | NULL                           |
| RHODE ISLAND                   | NULL                           |
| SOUTH CAROLINA                 | Focused Applications, Inc.     |
| SOUTH DAKOTA                   | NULL                           |
| TENNESSEE                      | NULL                           |
| TEXAS                          | Cameron Industries             |
| TEXAS                          | Cameron Industries             |
| UTAH                           | NULL                           |
| VIRGINIA                       | DC Security Applications       |
| VIRGINIA                       | Virginia Software Industries   |
| VIRGIN ISLANDS                 | NULL                           |
| VERMONT                        | NULL                           |
| WASHINGTON                     | NULL                           |
| WISCONSIN                      | NULL                           |
| WEST VIRGINIA                  | NULL                           |
| WYOMING                        | NULL                           |
+--------------------------------+--------------------------------+
80 rows in set (0.00 sec)