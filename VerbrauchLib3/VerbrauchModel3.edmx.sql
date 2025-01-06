
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 12/08/2024 14:33:43
-- Generated from EDMX file: C:\Users\annas\source\repos\VerbrauchRanking3\VerbrauchLib3\VerbrauchModel3.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [VerbrauchDB3];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'UserSet'
CREATE TABLE [dbo].[UserSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nachname] nvarchar(max)  NOT NULL,
    [Vorname] nvarchar(max)  NOT NULL,
    [IBAN] nvarchar(max)  NOT NULL,
    [RoleVermieter] bit  NOT NULL,
    [RoleMieter] bit  NOT NULL,
    [RoleDM] bit  NOT NULL
);
GO

-- Creating table 'WohnungSet'
CREATE TABLE [dbo].[WohnungSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Fläche] nvarchar(max)  NOT NULL,
    [Südseite] bit  NOT NULL,
    [UserId] int  NOT NULL,
    [Mieter_Id] int  NULL
);
GO

-- Creating table 'VerbrauchSet'
CREATE TABLE [dbo].[VerbrauchSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Wasser] nvarchar(max)  NOT NULL,
    [Strom] nvarchar(max)  NOT NULL,
    [Warmwasser] nvarchar(max)  NOT NULL,
    [Wärme] nvarchar(max)  NOT NULL,
    [Monat] nvarchar(max)  NOT NULL,
    [Jahr] nvarchar(max)  NOT NULL,
    [WohnungId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'UserSet'
ALTER TABLE [dbo].[UserSet]
ADD CONSTRAINT [PK_UserSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'WohnungSet'
ALTER TABLE [dbo].[WohnungSet]
ADD CONSTRAINT [PK_WohnungSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'VerbrauchSet'
ALTER TABLE [dbo].[VerbrauchSet]
ADD CONSTRAINT [PK_VerbrauchSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Mieter_Id] in table 'WohnungSet'
ALTER TABLE [dbo].[WohnungSet]
ADD CONSTRAINT [FK_mietet]
    FOREIGN KEY ([Mieter_Id])
    REFERENCES [dbo].[UserSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_mietet'
CREATE INDEX [IX_FK_mietet]
ON [dbo].[WohnungSet]
    ([Mieter_Id]);
GO

-- Creating foreign key on [UserId] in table 'WohnungSet'
ALTER TABLE [dbo].[WohnungSet]
ADD CONSTRAINT [FK_vermietet]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[UserSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_vermietet'
CREATE INDEX [IX_FK_vermietet]
ON [dbo].[WohnungSet]
    ([UserId]);
GO

-- Creating foreign key on [WohnungId] in table 'VerbrauchSet'
ALTER TABLE [dbo].[VerbrauchSet]
ADD CONSTRAINT [FK_verbraucht]
    FOREIGN KEY ([WohnungId])
    REFERENCES [dbo].[WohnungSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_verbraucht'
CREATE INDEX [IX_FK_verbraucht]
ON [dbo].[VerbrauchSet]
    ([WohnungId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------