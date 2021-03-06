if not exists (SELECT * FROM master.dbo.syslogins WHERE loginname = N'NT AUTHORITY\SYSTEM')
begin
	CREATE LOGIN [NT AUTHORITY\SYSTEM] FROM WINDOWS WITH DEFAULT_LANGUAGE = [PortuguÍs]
end

if not exists (select * from GISA.sys.sysusers where name = N'NT AUTHORITY\SYSTEM')
begin
	CREATE USER [NT AUTHORITY\SYSTEM] FOR LOGIN [NT AUTHORITY\SYSTEM]
end
GRANT SELECT TO [NT AUTHORITY\SYSTEM]
GRANT EXECUTE TO [NT AUTHORITY\SYSTEM]
GRANT CONTROL TO [NT AUTHORITY\SYSTEM]