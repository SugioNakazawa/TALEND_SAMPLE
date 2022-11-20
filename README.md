# TALEND_SAMPLE
現在、ローカルのプロジェクト直下を全てコミットしていますので他の端末にて利用するケースでは不具合の可能性があります。随時調整予定です。
gitignoreはまだ設定していません。今後、設定予定です。
## prepare Talend Project
1. Talend Open Studio で適当なワークスペースを作成し、空のプロジェクト「TALEND_SAMPLE」を作成し、Studioを終了します。
1. ターミナルでワークスペース ディレクトリに入り、TALEND_SAMPLEディレクトリを削除します。
1. git clone コマンドでTALEND_SAMPLEをクローンします。
1. 再度、Talend Open Studioを起動するとクローンしたプロジェクトが利用可能となります。

## JOB check_numeric
check number by tSchemaComplianceCheck
### sample data
testdata/check_numeric/bigdecimal.csv
testdata/check_numeric/int.csv
```
1,1
2,-1
3,0.12
4,1.2
5,12
6,-0.12
7,-1.2
8,-12
9,1.23
10,0.123
11,1.23
12,12.3
13,123
14,-0.123
15,-1.23
16,-12.3
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
### OK data fot Bigdecimal
```
|=-+--------=|
|no|newColumn|
|=-+--------=|
|1 |1.0      |
|2 |-1.0     |
|4 |1.2      |
|5 |12.0     |
|7 |-1.2     |
|8 |-12.0    |
|12|12.3     |
|16|-12.3    |
'--+---------'
```
### NG data for Bigdecimal
```
|=-+---------+---------+-----------------------------------------------------------=|
|no|newColumn|errorCode|errorMessage                                                |
|=-+---------+---------+-----------------------------------------------------------=|
|3 |0.1      |8        |newColumn:precision Non-matches                             |
|6 |-0.1     |8        |newColumn:precision Non-matches                             |
|9 |1.2      |8        |newColumn:precision Non-matches                             |
|10|0.1      |8        |newColumn:precision Non-matches                             |
|11|1.2      |8        |newColumn:precision Non-matches                             |
|13|123.0    |8        |newColumn:invalid Length setting is unsuitable for Precision|
|14|-0.1     |8        |newColumn:precision Non-matches                             |
|15|-1.2     |8        |newColumn:precision Non-matches                             |
|17|-123.0   |8        |newColumn:invalid Length setting is unsuitable for Precision|
|18|0.1      |8        |newColumn:precision Non-matches                             |
|19|1.2      |8        |newColumn:precision Non-matches                             |
|20|12.3     |8        |newColumn:precision Non-matches                             |
|21|123.4    |8        |newColumn:invalid Length setting is unsuitable for Precision|
|22|1234.0   |8        |newColumn:invalid Length setting is unsuitable for Precision|
|23|-0.1     |8        |newColumn:precision Non-matches                             |
|24|-1.2     |8        |newColumn:precision Non-matches                             |
|25|-12.3    |8        |newColumn:precision Non-matches                             |
|26|-123.4   |8        |newColumn:invalid Length setting is unsuitable for Precision|
|27|-1234.0  |8        |newColumn:invalid Length setting is unsuitable for Precision|
'--+---------+---------+------------------------------------------------------------'
```
### check OK for int
```
|=-+--------=|
|no|newColumn|
|=-+--------=|
|1 |1        |
|2 |-1       |
|5 |12       |
|8 |-12      |
|13|123      |
'--+---------'
```
### check NG for int
```
|=-+---------+---------+--------------------------=|
|no|newColumn|errorCode|errorMessage               |
|=-+---------+---------+--------------------------=|
|17|-123     |8        |newColumn:exceed max length|
|22|1234     |8        |newColumn:exceed max length|
|27|-1234    |8        |newColumn:exceed max length|
'--+---------+---------+---------------------------'
```
上記以外のデータがparse errorでtSchemaCimplianceCheckには渡されない。