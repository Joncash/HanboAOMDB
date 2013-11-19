CREATE TABLE [dbo].[UserAuthorizedFunction] (
    [SN]         INT           IDENTITY (1, 1) NOT NULL,
    [UserID]     NVARCHAR (50) NOT NULL,
    [FunctionSN] INT           NOT NULL,
    [Authorized] BIT           NOT NULL,
    CONSTRAINT [PK_UserAuthorizedFunction] PRIMARY KEY CLUSTERED ([SN] ASC),
    CONSTRAINT [FK_UserAuthorizedFunction_Code_Function] FOREIGN KEY ([FunctionSN]) REFERENCES [dbo].[Code_Function] ([SN]),
    CONSTRAINT [FK_UserAuthorizedFunction_UserMember] FOREIGN KEY ([UserID]) REFERENCES [dbo].[UserMember] ([UserID]) ON DELETE CASCADE ON UPDATE CASCADE
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'授權', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UserAuthorizedFunction', @level2type = N'COLUMN', @level2name = N'Authorized';

