﻿BEGIN TRANSACTION;
GO

ALTER TABLE [TB_PERSONAGENS] ADD [Derrotas] int NOT NULL DEFAULT 0;
GO

ALTER TABLE [TB_PERSONAGENS] ADD [Disputas] int NOT NULL DEFAULT 0;
GO

ALTER TABLE [TB_PERSONAGENS] ADD [Vitorias] int NOT NULL DEFAULT 0;
GO

ALTER TABLE [TB_ARMAS] ADD [PersonagemId] int NOT NULL DEFAULT 0;
GO

UPDATE [TB_ARMAS] SET [PersonagemId] = 1
WHERE [Id] = 1;
SELECT @@ROWCOUNT;

GO

UPDATE [TB_ARMAS] SET [PersonagemId] = 2
WHERE [Id] = 2;
SELECT @@ROWCOUNT;

GO

UPDATE [TB_ARMAS] SET [PersonagemId] = 3
WHERE [Id] = 3;
SELECT @@ROWCOUNT;

GO

UPDATE [TB_ARMAS] SET [PersonagemId] = 4
WHERE [Id] = 4;
SELECT @@ROWCOUNT;

GO

UPDATE [TB_ARMAS] SET [PersonagemId] = 5
WHERE [Id] = 5;
SELECT @@ROWCOUNT;

GO

UPDATE [TB_ARMAS] SET [PersonagemId] = 6
WHERE [Id] = 6;
SELECT @@ROWCOUNT;

GO

UPDATE [TB_ARMAS] SET [PersonagemId] = 7
WHERE [Id] = 7;
SELECT @@ROWCOUNT;

GO

UPDATE [TB_PERSONAGENS] SET [Derrotas] = 0, [Disputas] = 0, [Vitorias] = 0
WHERE [Id] = 1;
SELECT @@ROWCOUNT;

GO

UPDATE [TB_PERSONAGENS] SET [Derrotas] = 0, [Disputas] = 0, [Vitorias] = 0
WHERE [Id] = 2;
SELECT @@ROWCOUNT;

GO

UPDATE [TB_PERSONAGENS] SET [Derrotas] = 0, [Disputas] = 0, [Vitorias] = 0
WHERE [Id] = 3;
SELECT @@ROWCOUNT;

GO

UPDATE [TB_PERSONAGENS] SET [Derrotas] = 0, [Disputas] = 0, [Vitorias] = 0
WHERE [Id] = 4;
SELECT @@ROWCOUNT;

GO

UPDATE [TB_PERSONAGENS] SET [Derrotas] = 0, [Disputas] = 0, [Vitorias] = 0
WHERE [Id] = 5;
SELECT @@ROWCOUNT;

GO

UPDATE [TB_PERSONAGENS] SET [Derrotas] = 0, [Disputas] = 0, [Vitorias] = 0
WHERE [Id] = 6;
SELECT @@ROWCOUNT;

GO

UPDATE [TB_PERSONAGENS] SET [Derrotas] = 0, [Disputas] = 0, [Vitorias] = 0
WHERE [Id] = 7;
SELECT @@ROWCOUNT;

GO

UPDATE [TB_USUARIOS] SET [PasswordHash] = 0x3AC5C15B0C15A4ACF4DF661550FEECBE51C12CC9EE15C574ABD2490B9D998EC67696707DB8886E28470567C67E3C73F1C387C3BC2917C142FE173715A261091A, [PasswordSalt] = 0x5643F94DA443307B37D3636F02703E546B80EDB9842DBC311DABC031A04D7267D3601CD807BBA2B7E59DB604FD8A9D502580DB7BFBA0A3FF7D0F9DF1AB6EDDE739F763BECDC7D0007AD0D15AFFAB49907709F1321ECCC7B8A0E66FD8DE5C4A186DADFC2E32BE55F28A76F84602E98EDDB2FB11AA4D89D000E85809FFF0C024BB
WHERE [Id] = 1;
SELECT @@ROWCOUNT;

GO

CREATE UNIQUE INDEX [IX_TB_ARMAS_PersonagemId] ON [TB_ARMAS] ([PersonagemId]);
GO

ALTER TABLE [TB_ARMAS] ADD CONSTRAINT [FK_TB_ARMAS_TB_PERSONAGENS_PersonagemId] FOREIGN KEY ([PersonagemId]) REFERENCES [TB_PERSONAGENS] ([Id]) ON DELETE CASCADE;
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20240926013819_MigracaoUmParaUm', N'8.0.8');
GO

COMMIT;
GO

