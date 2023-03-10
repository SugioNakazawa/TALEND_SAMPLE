$fileDir = Split-Path -Parent $MyInvocation.MyCommand.Path
cd $fileDir
java '-Dtalend.component.manager.m2.repository=%cd%/../lib' '-Xms256M' '-Xmx1024M' '-Dfile.encoding=UTF-8' -cp '.;../lib/routines.jar;../lib/log4j-slf4j-impl-2.12.1.jar;../lib/log4j-api-2.12.1.jar;../lib/log4j-core-2.12.1.jar;../lib/talend-proxy-1.0.2.jar;../lib/dom4j-2.1.3.jar;../lib/jakarta-oro-2.0.8.jar;../lib/commons-net-3.6.jar;../lib/talend_file_enhanced-1.1.jar;../lib/talendcsv.jar;../lib/slf4j-api-1.7.25.jar;../lib/crypto-utils-0.31.12.jar;connect_ftp_0_1.jar;' talend_sample.connect_ftp_0_1.connect_ftp $args
