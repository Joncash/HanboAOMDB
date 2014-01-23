CREATE TABLE [dbo].[MacroPlan] (
    [SN]                         INT             IDENTITY (1, 1) NOT NULL,
    [MacroName]                  NVARCHAR (50)   NOT NULL,
    [MacroGuid]                  NVARCHAR (50)   NOT NULL,
    [Note]                       NVARCHAR (MAX)  NULL,
    [ShapeModelFilepath]         NVARCHAR (MAX)  NOT NULL,
    [TrainingImageFilepath]      NVARCHAR (MAX)  NULL,
    [TrainingImage]              VARBINARY (MAX) NOT NULL,
    [MatchingParamBinaryData]    VARBINARY (MAX) NOT NULL,
    [MeasureBinaryData]          VARBINARY (MAX) NULL,
    [MeasureAssistantBinaryData] VARBINARY (MAX) NULL,
    [ModelRow]                   FLOAT (53)      NULL,
    [ModelCol]                   FLOAT (53)      NULL,
    [ModelAngle]                 FLOAT (53)      NULL,
    [ExportUnit]                 NVARCHAR (10)   NULL,
    [UpperLightValue]            NVARCHAR (3)    NULL,
    [BottomLigthValue]           NVARCHAR (3)    NULL,
    [UpperLightSwitch]           BIT             NULL,
    [BottomLightSiwtch]          BIT             NULL,
    [CreateBy]                   NVARCHAR (50)   NULL,
    [ModifiedBy]                 NVARCHAR (50)   NULL,
    [CreateOn]                   DATETIME        NULL,
    [ModifiedOn]                 DATETIME        NULL,
    [IsDeleted]                  BIT             NULL,
    [Snapshot]                   VARBINARY (MAX) NULL,
    [TechnicalDrawingModel]      XML             NULL,
    CONSTRAINT [PK_MacroPlan] PRIMARY KEY CLUSTERED ([SN] ASC)
);








GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'巨集名稱', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MacroPlan', @level2type = N'COLUMN', @level2name = N'MacroName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'GUID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MacroPlan', @level2type = N'COLUMN', @level2name = N'MacroGuid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'用途描述', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MacroPlan', @level2type = N'COLUMN', @level2name = N'Note';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'巨集訓練模型檔案路徑', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MacroPlan', @level2type = N'COLUMN', @level2name = N'ShapeModelFilepath';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'訓練影像路徑', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MacroPlan', @level2type = N'COLUMN', @level2name = N'TrainingImageFilepath';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'訓練影像', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MacroPlan', @level2type = N'COLUMN', @level2name = N'TrainingImage';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'MatchingParam', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MacroPlan', @level2type = N'COLUMN', @level2name = N'MatchingParamBinaryData';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'量測 二進位資料 (ROIs, Geos)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MacroPlan', @level2type = N'COLUMN', @level2name = N'MeasureBinaryData';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'測量參數', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MacroPlan', @level2type = N'COLUMN', @level2name = N'MeasureAssistantBinaryData';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'輸出單位', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MacroPlan', @level2type = N'COLUMN', @level2name = N'ExportUnit';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'上光源亮度', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MacroPlan', @level2type = N'COLUMN', @level2name = N'UpperLightValue';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'下光源亮度', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MacroPlan', @level2type = N'COLUMN', @level2name = N'BottomLigthValue';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'上光源開關', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MacroPlan', @level2type = N'COLUMN', @level2name = N'UpperLightSwitch';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'下光源開關', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MacroPlan', @level2type = N'COLUMN', @level2name = N'BottomLightSiwtch';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'建立者', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MacroPlan', @level2type = N'COLUMN', @level2name = N'CreateBy';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'修改者', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MacroPlan', @level2type = N'COLUMN', @level2name = N'ModifiedBy';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'建立時間', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MacroPlan', @level2type = N'COLUMN', @level2name = N'CreateOn';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'修改時間', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MacroPlan', @level2type = N'COLUMN', @level2name = N'ModifiedOn';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'是否刪除 (顯示於巨集列表)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MacroPlan', @level2type = N'COLUMN', @level2name = N'IsDeleted';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'程式編輯縮圖 (工程編輯縮圖)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MacroPlan', @level2type = N'COLUMN', @level2name = N'Snapshot';




GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'工程圖模型 xml 描述檔', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MacroPlan', @level2type = N'COLUMN', @level2name = N'TechnicalDrawingModel';

