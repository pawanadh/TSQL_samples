
--How to add a secondary file in TempDB for multiplexing?

--Use the following query to add a secondary file in the TempDB for multiplexing.
ALTER DATABASE tempdb
ADD FILE (NAME = tempdev2, FILENAME = 'W:\tempdb2.ndf', SIZE = 102400KB);
