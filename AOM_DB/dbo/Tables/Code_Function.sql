CREATE TABLE [dbo].[Code_Function] (
    [SN]                  INT            IDENTITY (1, 1) NOT NULL,
    [Code]                NVARCHAR (50)  NOT NULL,
    [FunctionDescription] NVARCHAR (250) NULL,
    CONSTRAINT [PK_Code_Function] PRIMARY KEY CLUSTERED ([SN] ASC)
);

