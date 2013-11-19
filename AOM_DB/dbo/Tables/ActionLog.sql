CREATE TABLE [dbo].[ActionLog] (
    [SN]         INT            IDENTITY (1, 1) NOT NULL,
    [ActionType] NVARCHAR (50)  NULL,
    [ActionData] NVARCHAR (MAX) NULL,
    [UserID]     NVARCHAR (50)  NOT NULL,
    [CreateOn]   DATETIME       CONSTRAINT [DF_ActionLog_CreateOn] DEFAULT (getdate()) NOT NULL,
    [Note]       NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_ActionLog] PRIMARY KEY CLUSTERED ([SN] ASC)
);

