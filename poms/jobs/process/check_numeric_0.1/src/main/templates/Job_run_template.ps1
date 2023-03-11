$fileDir = Split-Path -Parent $MyInvocation.MyCommand.Path
cd $fileDir
java '-Dtalend.component.manager.m2.repository=%cd%/../lib' '-Xms256M' '-Xmx1024M' -cp '.;../lib/routines.jar;../lib/log4j-slf4j-impl-2.12.1.jar;../lib/log4j-api-2.12.1.jar;../lib/log4j-core-2.12.1.jar;../lib/commons-lang-2.6.jar;../lib/dom4j-2.1.3.jar;../lib/talend_file_enhanced-1.1.jar;../lib/talendcsv.jar;../lib/slf4j-api-1.7.25.jar;../lib/crypto-utils-0.31.12.jar;check_numeric_0_1.jar;' talend_sample.check_numeric_0_1.check_numeric --context=Default $args
