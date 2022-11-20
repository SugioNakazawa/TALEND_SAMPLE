# TALEND_SAMPLE

## check number by tSchemaConplienceCheck
### sample data
```
1,1,OK
2,-1,OK
3,0.12
4,1.2,OK
5,12,OK
6,-0.12
7,-1.2,OK
8,-12,OK
9,1.23
10,0.123
11,1.23
12,12.3,OK
13,123
14,-0.123
15,-1.23
16,-12.3,OK
17,-123
18,0.1234
19,1.234
20,12.34
21,123.4
22,1234
23,-0.1234
24,-1.234
25,-12.34
26,-123.4
27,-1234
```
### OK data
```
|=-+---------+-----------=|
|no|newColumn|expectations|
|=-+---------+-----------=|
|1 |1.0      |OK          |
|2 |-1.0     |OK          |
|4 |1.2      |OK          |
|5 |12.0     |OK          |
|7 |-1.2     |OK          |
|8 |-12.0    |OK          |
|12|12.3     |OK          |
|16|-12.3    |OK          |
'--+---------+------------'
```
### NG data
```
|=-+---------+------------+---------+-----------------------------------------------------------=|
|no|newColumn|expectations|errorCode|errorMessage                                                |
|=-+---------+------------+---------+-----------------------------------------------------------=|
|3 |0.1      |            |8        |newColumn:precision Non-matches                             |
|6 |-0.1     |            |8        |newColumn:precision Non-matches                             |
|9 |1.2      |            |8        |newColumn:precision Non-matches                             |
|10|0.1      |            |8        |newColumn:precision Non-matches                             |
|11|1.2      |            |8        |newColumn:precision Non-matches                             |
|13|123.0    |            |8        |newColumn:invalid Length setting is unsuitable for Precision|
|14|-0.1     |            |8        |newColumn:precision Non-matches                             |
|15|-1.2     |            |8        |newColumn:precision Non-matches                             |
|17|-123.0   |            |8        |newColumn:invalid Length setting is unsuitable for Precision|
|18|0.1      |            |8        |newColumn:precision Non-matches                             |
|19|1.2      |            |8        |newColumn:precision Non-matches                             |
|20|12.3     |            |8        |newColumn:precision Non-matches                             |
|21|123.4    |            |8        |newColumn:invalid Length setting is unsuitable for Precision|
|22|1234.0   |            |8        |newColumn:invalid Length setting is unsuitable for Precision|
|23|-0.1     |            |8        |newColumn:precision Non-matches                             |
|24|-1.2     |            |8        |newColumn:precision Non-matches                             |
|25|-12.3    |            |8        |newColumn:precision Non-matches                             |
|26|-123.4   |            |8        |newColumn:invalid Length setting is unsuitable for Precision|
|27|-1234.0  |            |8        |newColumn:invalid Length setting is unsuitable for Precision|
'--+---------+------------+---------+------------------------------------------------------------'
```
