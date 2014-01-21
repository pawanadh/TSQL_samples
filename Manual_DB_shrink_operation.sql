--Manual_DB_shrink_operation.sql
--To release the space from TempDB and the user database manually, use the following script.
GO
DBCC FREESYSTEMCACHE('ALL');
DBCC FREESESSIONCACHE;
DBCC SHRINKDATABASE (N'tempdb', TRUNCATEONLY)
DBCC SHRINKDATABASE (N'<DatabaseName_1>', TRUNCATEONLY)
DBCC SHRINKDATABASE (N'<DatabaseName_2>', TRUNCATEONLY)
GO
