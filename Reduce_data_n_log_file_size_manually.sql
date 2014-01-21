
--Reduce the data & log file size manually
--Sometime the space is not released by Manual DB shrink operation (step #i) then we are required to change the DB row & log size manually. This can be done either by using a script or from the UI which is explained below:
--Using a script:
USE [tempdb]
GO
SP_HELPFILE
--Note down the logical name OF all timed files 
USE [master]
GO
ALTER DATABASE [tempdb] MODIFY FILE ( NAME = N'tempdev', SIZE = 102400KB )
GO
ALTER DATABASE [tempdb] MODIFY FILE ( NAME = N'templog', SIZE = 1024KB )
GO
