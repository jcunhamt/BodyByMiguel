
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 11/26/2018 22:37:50
-- Generated from EDMX file: C:\Code\BodyByMiguel\BodyByMiguel\BodyByMiguel\BodyByMiguel\BodyByMiguelData.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [BodyByMiguel];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK__Exercicio__Id__4D94879B]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Exercicio] DROP CONSTRAINT [FK__Exercicio__Id__4D94879B];
GO
IF OBJECT_ID(N'[dbo].[FK__PequenoMuscu__Id__5070F446]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PequenoMusculo] DROP CONSTRAINT [FK__PequenoMuscu__Id__5070F446];
GO
IF OBJECT_ID(N'[BodyByMiguelModelStoreContainer].[FK_ExercicioTreino_Exercicio]', 'F') IS NOT NULL
    ALTER TABLE [BodyByMiguelModelStoreContainer].[ExercicioTreino] DROP CONSTRAINT [FK_ExercicioTreino_Exercicio];
GO
IF OBJECT_ID(N'[BodyByMiguelModelStoreContainer].[FK_ExercicioTreino_Treino]', 'F') IS NOT NULL
    ALTER TABLE [BodyByMiguelModelStoreContainer].[ExercicioTreino] DROP CONSTRAINT [FK_ExercicioTreino_Treino];
GO
IF OBJECT_ID(N'[dbo].[FK_PlanoTreino]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Treino] DROP CONSTRAINT [FK_PlanoTreino];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Exercicio]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Exercicio];
GO
IF OBJECT_ID(N'[dbo].[GrandeMusculo]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GrandeMusculo];
GO
IF OBJECT_ID(N'[dbo].[PequenoMusculo]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PequenoMusculo];
GO
IF OBJECT_ID(N'[dbo].[PlanoTreino]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PlanoTreino];
GO
IF OBJECT_ID(N'[dbo].[Treino]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Treino];
GO
IF OBJECT_ID(N'[BodyByMiguelModelStoreContainer].[ExercicioTreino]', 'U') IS NOT NULL
    DROP TABLE [BodyByMiguelModelStoreContainer].[ExercicioTreino];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Exercicio'
CREATE TABLE [dbo].[Exercicio] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nome] nchar(100)  NOT NULL,
    [Observacao] varchar(max)  NULL
);
GO

-- Creating table 'PlanoTreino'
CREATE TABLE [dbo].[PlanoTreino] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [DataCriacao] datetime  NOT NULL,
    [Observacoes] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Treino'
CREATE TABLE [dbo].[Treino] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nome] nchar(100)  NOT NULL,
    [Observacoes] varchar(max)  NULL
);
GO

-- Creating table 'ExercicioTreino'
CREATE TABLE [dbo].[ExercicioTreino] (
    [IdTreino] int  NOT NULL,
    [IdExercicio] int  NOT NULL,
    [NRepeticoes] int  NULL,
    [NSeries] int  NULL,
    [Observacoes] nchar(100)  NULL
);
GO

-- Creating table 'GrandeMusculo'
CREATE TABLE [dbo].[GrandeMusculo] (
    [Id] int  NOT NULL,
    [Descricao] varchar(50)  NOT NULL
);
GO

-- Creating table 'PequenoMusculo'
CREATE TABLE [dbo].[PequenoMusculo] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Descricao] varchar(50)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Exercicio'
ALTER TABLE [dbo].[Exercicio]
ADD CONSTRAINT [PK_Exercicio]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PlanoTreino'
ALTER TABLE [dbo].[PlanoTreino]
ADD CONSTRAINT [PK_PlanoTreino]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Treino'
ALTER TABLE [dbo].[Treino]
ADD CONSTRAINT [PK_Treino]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [IdTreino], [IdExercicio] in table 'ExercicioTreino'
ALTER TABLE [dbo].[ExercicioTreino]
ADD CONSTRAINT [PK_ExercicioTreino]
    PRIMARY KEY CLUSTERED ([IdTreino], [IdExercicio] ASC);
GO

-- Creating primary key on [Id] in table 'GrandeMusculo'
ALTER TABLE [dbo].[GrandeMusculo]
ADD CONSTRAINT [PK_GrandeMusculo]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PequenoMusculo'
ALTER TABLE [dbo].[PequenoMusculo]
ADD CONSTRAINT [PK_PequenoMusculo]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [IdExercicio] in table 'ExercicioTreino'
ALTER TABLE [dbo].[ExercicioTreino]
ADD CONSTRAINT [FK_ExercicioTreino_Exercicio]
    FOREIGN KEY ([IdExercicio])
    REFERENCES [dbo].[Exercicio]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ExercicioTreino_Exercicio'
CREATE INDEX [IX_FK_ExercicioTreino_Exercicio]
ON [dbo].[ExercicioTreino]
    ([IdExercicio]);
GO

-- Creating foreign key on [Id] in table 'Treino'
ALTER TABLE [dbo].[Treino]
ADD CONSTRAINT [FK_PlanoTreino]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[PlanoTreino]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [IdTreino] in table 'ExercicioTreino'
ALTER TABLE [dbo].[ExercicioTreino]
ADD CONSTRAINT [FK_ExercicioTreino_Treino]
    FOREIGN KEY ([IdTreino])
    REFERENCES [dbo].[Treino]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'Exercicio'
ALTER TABLE [dbo].[Exercicio]
ADD CONSTRAINT [FK__Exercicio__Id__4D94879B1]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[PequenoMusculo]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'PequenoMusculo'
ALTER TABLE [dbo].[PequenoMusculo]
ADD CONSTRAINT [FK__PequenoMuscu__Id__5070F446]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[GrandeMusculo]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------