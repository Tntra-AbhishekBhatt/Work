--Add new role as IC to the role table so that it can be assign to any user by admin user. 
--Users who has IC role they can access IC feature and work on it.

IF NOT EXISTS (SELECT 1 FROM GurukulaAppConfig.dbo.Roles WHERE Name = 'IC' AND IsActive = 1 AND CanModify=0)
BEGIN
    INSERT INTO GurukulaAppConfig.dbo.Roles (Name, IsActive, CanModify)
    VALUES ('IC', 1, 0)
END
