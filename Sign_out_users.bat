rem Logs out all users noted in the orgUnits.csv file
rem
rem Case #16054
rem
rem Format of the orgUnits.csv file
rem
rem orgUnitPath
rem orgUnitPath=/<path1>
rem orgUnitPath=/<path2>
rem ...
rem orgUnitPath=/<pathN>
rem
rem Links for reference
rem https://github.com/jay0lee/GAM/wiki/SecurityExamples#signing-a-user-out
rem https://github.com/jay0lee/GAM/wiki/BulkOperations#using-csv-files

gam csv orgUnits.csv gam print users query ~orgUnitPath | gam csv - gam user ~primaryEmail signout