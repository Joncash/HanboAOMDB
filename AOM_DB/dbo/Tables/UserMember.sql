CREATE TABLE [dbo].[UserMember] (
    [UserID]     NVARCHAR (50) NOT NULL,
    [Name]       NVARCHAR (50) NOT NULL,
    [Email]      NVARCHAR (50) NOT NULL,
    [Password]   NVARCHAR (50) NOT NULL,
    [DeptName]   NVARCHAR (50) NULL,
    [CreateOn]   DATETIME      NULL,
    [ModifiedOn] DATETIME      NULL,
    [CreateBy]   NVARCHAR (50) NULL,
    [ModifiedBy] NVARCHAR (50) NULL,
    [Salt]       NVARCHAR (50) NULL,
    [Disabled]   BIT           NULL,
    CONSTRAINT [PK_UserMember] PRIMARY KEY CLUSTERED ([UserID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'salt', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UserMember', @level2type = N'COLUMN', @level2name = N'Salt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'帳號停用', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UserMember', @level2type = N'COLUMN', @level2name = N'Disabled';

