rem Logs out all users in OUs
rem
rem Case #16054
rem
rem Links for reference
rem https://github.com/jay0lee/GAM/wiki/SecurityExamples#signing-a-user-out
rem https://github.com/jay0lee/GAM/wiki/BulkOperations#using-csv-files

gam print users query "orgUnitPath=/Students" | gam csv - gam user ~primaryEmail signout
gam print users query "orgUnitPath=/Employees" | gam csv - gam user ~primaryEmail signout
rem pause