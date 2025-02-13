
-- Subscription Tale
CREATE TABLE [dbo].[ABONAMENTE] (
    [ID_Abonament] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [Durata] INT NOT NULL,
    [Tip] NCHAR(20) NOT NULL
);

-- EMPLOYEES TABLE 
CREATE TABLE [dbo].[ANGAJATI] (
    [ID_Angajat] INT NOT NULL PRIMARY KEY,
    [Nume] NVARCHAR(50) NOT NULL,
    [Prenume] NVARCHAR(50) NOT NULL,
    [Nr_Tel] NCHAR(10) NOT NULL,
    [Email] NVARCHAR(50) NOT NULL,
    [ID_Job] INT NOT NULL
);

-- EMPLOYEES Facilites table
CREATE TABLE [dbo].[ANGAJATI_SALI] (
    [ID_Angajati_Sala] INT NOT NULL PRIMARY KEY,
    [Data_Angajare] DATE NOT NULL,
    [ID_Sala] INT NOT NULL,
    [ID_Angajat] INT NOT NULL
);

-- Jobs Table
CREATE TABLE [dbo].[JOB_URI] (
    [ID_Job] INT NOT NULL PRIMARY KEY,
    [Titlu] NCHAR(10) NOT NULL,
    [Salariu] INT NOT NULL
);

-- Locatii Table
CREATE TABLE [dbo].[LOCATII] (
    [ID_Locatie] INT NOT NULL PRIMARY KEY,
    [Judet] NVARCHAR(50) NOT NULL,
    [Oras] NVARCHAR(50) NOT NULL,
    [Strada] NVARCHAR(50) NOT NULL,
    [Numar] INT NOT NULL
);

-- Membri Table
CREATE TABLE [dbo].[MEMBRI] (
    [ID_Membri] INT NOT NULL PRIMARY KEY,
    [Nume] NVARCHAR(20) NOT NULL,
    [Prenume] NVARCHAR(20) NOT NULL,
    [Varsta] INT NOT NULL,
    [Gen] NCHAR(10) NULL,
    [ID_Abonament] INT NOT NULL
);

-- Memberships table
CREATE TABLE [dbo].[MEMBRI_SALI] (
    [ID_Membru_Sala] INT NOT NULL PRIMARY KEY,
    [Data_inregistrare] DATE NOT NULL,
    [ID_Sala] INT NOT NULL,
    [ID_Membri] INT NOT NULL
);

-- GYMS Table
CREATE TABLE [dbo].[SALI] (
    [ID_Sala] INT NOT NULL PRIMARY KEY,
    [Nume] NVARCHAR(50) NOT NULL,
    [ID_Tip] INT NOT NULL,
    [ID_Locatii] INT NOT NULL,
    [Ora_inchidere] TIME(7) NULL,
    [Ora_deschidere] TIME(7) NULL
);

-- Tipe Table
CREATE TABLE [dbo].[TIPURI] (
    [ID_Tip] INT NOT NULL PRIMARY KEY,
    [Denumire] NVARCHAR(50) NOT NULL,
    [Necesita_Asistenta] NVARCHAR(50) NOT NULL
);

GO
SET IDENTITY_INSERT [dbo].[ABONAMENTE] ON 

INSERT [dbo].[ABONAMENTE] ([ID_Abonament], [Durata], [Tip]) VALUES (1, 30, N'PREMIUM             ')
INSERT [dbo].[ABONAMENTE] ([ID_Abonament], [Durata], [Tip]) VALUES (2, 30, N'Student             ')
INSERT [dbo].[ABONAMENTE] ([ID_Abonament], [Durata], [Tip]) VALUES (3, 365, N'VIP                 ')
INSERT [dbo].[ABONAMENTE] ([ID_Abonament], [Durata], [Tip]) VALUES (4, 30, N'Student             ')
INSERT [dbo].[ABONAMENTE] ([ID_Abonament], [Durata], [Tip]) VALUES (5, 60, N'Bronze              ')
INSERT [dbo].[ABONAMENTE] ([ID_Abonament], [Durata], [Tip]) VALUES (6, 90, N'Silver              ')
INSERT [dbo].[ABONAMENTE] ([ID_Abonament], [Durata], [Tip]) VALUES (7, 1, N'One pass            ')
SET IDENTITY_INSERT [dbo].[ABONAMENTE] OFF
GO
INSERT [dbo].[ANGAJATI] ([ID_Angajat], [Nume], [Prenume], [Nr_Tel], [Email], [ID_Job]) VALUES (1, N'Andrei', N'Alexandru', N'0753012234', N'AndreiAlexandru@yahoo.com', 1)
INSERT [dbo].[ANGAJATI] ([ID_Angajat], [Nume], [Prenume], [Nr_Tel], [Email], [ID_Job]) VALUES (2, N'Bianca', N'Maria', N'0720123456', N'BiancaMaria@gmail.com', 5)
INSERT [dbo].[ANGAJATI] ([ID_Angajat], [Nume], [Prenume], [Nr_Tel], [Email], [ID_Job]) VALUES (4, N'Diana', N'Elena', N'0711345678', N'DianaElena@gmail.com', 13)
INSERT [dbo].[ANGAJATI] ([ID_Angajat], [Nume], [Prenume], [Nr_Tel], [Email], [ID_Job]) VALUES (5, N'Eduard', N'George', N'0760456789', N'EduardGeorge@yahoo.com', 3)
INSERT [dbo].[ANGAJATI] ([ID_Angajat], [Nume], [Prenume], [Nr_Tel], [Email], [ID_Job]) VALUES (6, N'Florin', N'Andreea', N'0741567890', N'FlorinAndreea@hotmail.com', 7)
INSERT [dbo].[ANGAJATI] ([ID_Angajat], [Nume], [Prenume], [Nr_Tel], [Email], [ID_Job]) VALUES (7, N'Gabriela', N'Ioan', N'0722678901', N'GabrielaIoan@gmail.com', 11)
INSERT [dbo].[ANGAJATI] ([ID_Angajat], [Nume], [Prenume], [Nr_Tel], [Email], [ID_Job]) VALUES (8, N'Horia', N'Larisa', N'0753789012', N'HoriaLarisa@yahoo.com', 15)
INSERT [dbo].[ANGAJATI] ([ID_Angajat], [Nume], [Prenume], [Nr_Tel], [Email], [ID_Job]) VALUES (9, N'Irina', N'Marius', N'0744890123', N'IrinaMarius@gmail.com', 2)
INSERT [dbo].[ANGAJATI] ([ID_Angajat], [Nume], [Prenume], [Nr_Tel], [Email], [ID_Job]) VALUES (10, N'Jonathan', N'Camelia', N'0735901234', N'JonathanCamelia@hotmail.com', 6)
INSERT [dbo].[ANGAJATI] ([ID_Angajat], [Nume], [Prenume], [Nr_Tel], [Email], [ID_Job]) VALUES (11, N'Karina', N'Valentin', N'0726012345', N'KarinaValentin@gmail.com', 10)
INSERT [dbo].[ANGAJATI] ([ID_Angajat], [Nume], [Prenume], [Nr_Tel], [Email], [ID_Job]) VALUES (14, N'Nicolae', N'Ana', N'0759345678', N'NicolaeAna@hotmail.com', 8)
INSERT [dbo].[ANGAJATI] ([ID_Angajat], [Nume], [Prenume], [Nr_Tel], [Email], [ID_Job]) VALUES (15, N'Oana', N'Cosmin', N'0740456789', N'OanaCosmin@gmail.com', 12)
INSERT [dbo].[ANGAJATI] ([ID_Angajat], [Nume], [Prenume], [Nr_Tel], [Email], [ID_Job]) VALUES (16, N'Petru', N'Elena', N'0731567890', N'PetruElena@yahoo.com', 16)
INSERT [dbo].[ANGAJATI] ([ID_Angajat], [Nume], [Prenume], [Nr_Tel], [Email], [ID_Job]) VALUES (17, N'Raluca', N'Adrian', N'0722678901', N'RalucaAdrian@gmail.com', 1)
INSERT [dbo].[ANGAJATI] ([ID_Angajat], [Nume], [Prenume], [Nr_Tel], [Email], [ID_Job]) VALUES (18, N'Silviu', N'Claudia', N'0753789012', N'SilviuClaudia@hotmail.com', 5)
INSERT [dbo].[ANGAJATI] ([ID_Angajat], [Nume], [Prenume], [Nr_Tel], [Email], [ID_Job]) VALUES (20, N'Ursula', N'Marius', N'0735901234', N'UrsulaMarius@yahoo.com', 13)
INSERT [dbo].[ANGAJATI] ([ID_Angajat], [Nume], [Prenume], [Nr_Tel], [Email], [ID_Job]) VALUES (21, N'Valentin', N'Camelia', N'0726012345', N'ValentinCamelia@gmail.com', 3)
INSERT [dbo].[ANGAJATI] ([ID_Angajat], [Nume], [Prenume], [Nr_Tel], [Email], [ID_Job]) VALUES (22, N'Wanda', N'Valentin', N'0717123456', N'WandaValentin@hotmail.com', 7)
INSERT [dbo].[ANGAJATI] ([ID_Angajat], [Nume], [Prenume], [Nr_Tel], [Email], [ID_Job]) VALUES (23, N'Xavier', N'Simona', N'0768234567', N'XavierSimona@gmail.com', 11)
INSERT [dbo].[ANGAJATI] ([ID_Angajat], [Nume], [Prenume], [Nr_Tel], [Email], [ID_Job]) VALUES (24, N'Yasmine', N'Radu', N'0759345678', N'YasmineRadu@yahoo.com', 15)
INSERT [dbo].[ANGAJATI] ([ID_Angajat], [Nume], [Prenume], [Nr_Tel], [Email], [ID_Job]) VALUES (25, N'Zoltan', N'Ana', N'0740456789', N'ZoltanAna@gmail.com', 2)
INSERT [dbo].[ANGAJATI] ([ID_Angajat], [Nume], [Prenume], [Nr_Tel], [Email], [ID_Job]) VALUES (26, N'Alexandru', N'Cosmin', N'0731567890', N'AlexandruCosmin@hotmail.com', 6)
INSERT [dbo].[ANGAJATI] ([ID_Angajat], [Nume], [Prenume], [Nr_Tel], [Email], [ID_Job]) VALUES (27, N'Bianca', N'Elena', N'0722678901', N'BiancaElena@gmail.com', 10)
INSERT [dbo].[ANGAJATI] ([ID_Angajat], [Nume], [Prenume], [Nr_Tel], [Email], [ID_Job]) VALUES (30, N'Eduard', N'Andreea', N'0735901234', N'EduardAndreea@hotmail.com', 8)
INSERT [dbo].[ANGAJATI] ([ID_Angajat], [Nume], [Prenume], [Nr_Tel], [Email], [ID_Job]) VALUES (31, N'Florin', N'Marius', N'0726012345', N'FlorinMarius@gmail.com', 12)
INSERT [dbo].[ANGAJATI] ([ID_Angajat], [Nume], [Prenume], [Nr_Tel], [Email], [ID_Job]) VALUES (32, N'Gabriela', N'Camelia', N'0717123456', N'GabrielaCamelia@yahoo.com', 16)
INSERT [dbo].[ANGAJATI] ([ID_Angajat], [Nume], [Prenume], [Nr_Tel], [Email], [ID_Job]) VALUES (33, N'Horia', N'Valentin', N'0768234567', N'HoriaValentin@gmail.com', 1)
INSERT [dbo].[ANGAJATI] ([ID_Angajat], [Nume], [Prenume], [Nr_Tel], [Email], [ID_Job]) VALUES (34, N'Irina', N'Simona', N'0759345678', N'IrinaSimona@hotmail.com', 5)
INSERT [dbo].[ANGAJATI] ([ID_Angajat], [Nume], [Prenume], [Nr_Tel], [Email], [ID_Job]) VALUES (36, N'Karina', N'Ana', N'0731567890', N'KarinaAna@yahoo.com', 13)
INSERT [dbo].[ANGAJATI] ([ID_Angajat], [Nume], [Prenume], [Nr_Tel], [Email], [ID_Job]) VALUES (37, N'Lucian', N'Cosmin', N'0722678901', N'LucianCosmin@gmail.com', 3)
INSERT [dbo].[ANGAJATI] ([ID_Angajat], [Nume], [Prenume], [Nr_Tel], [Email], [ID_Job]) VALUES (38, N'Mihaela', N'Elena', N'0753789012', N'MihaelaElena@hotmail.com', 7)
INSERT [dbo].[ANGAJATI] ([ID_Angajat], [Nume], [Prenume], [Nr_Tel], [Email], [ID_Job]) VALUES (39, N'Nicolae', N'Adrian', N'0744890123', N'NicolaeAdrian@gmail.com', 11)
INSERT [dbo].[ANGAJATI] ([ID_Angajat], [Nume], [Prenume], [Nr_Tel], [Email], [ID_Job]) VALUES (40, N'Oana', N'Claudia', N'0735901234', N'OanaClaudia@yahoo.com', 15)
INSERT [dbo].[ANGAJATI] ([ID_Angajat], [Nume], [Prenume], [Nr_Tel], [Email], [ID_Job]) VALUES (41, N'Petru', N'Andreea', N'0726012345', N'PetruAndreea@gmail.com', 2)
INSERT [dbo].[ANGAJATI] ([ID_Angajat], [Nume], [Prenume], [Nr_Tel], [Email], [ID_Job]) VALUES (42, N'Raluca', N'Marius', N'0717123456', N'RalucaMarius@hotmail.com', 6)
INSERT [dbo].[ANGAJATI] ([ID_Angajat], [Nume], [Prenume], [Nr_Tel], [Email], [ID_Job]) VALUES (43, N'Silviu', N'Camelia', N'0768234567', N'SilviuCamelia@gmail.com', 10)
INSERT [dbo].[ANGAJATI] ([ID_Angajat], [Nume], [Prenume], [Nr_Tel], [Email], [ID_Job]) VALUES (46, N'Valentin', N'Ana', N'0731567890', N'ValentinAna@hotmail.com', 8)
INSERT [dbo].[ANGAJATI] ([ID_Angajat], [Nume], [Prenume], [Nr_Tel], [Email], [ID_Job]) VALUES (47, N'Wanda', N'Cosmin', N'0722678901', N'WandaCosmin@gmail.com', 12)
INSERT [dbo].[ANGAJATI] ([ID_Angajat], [Nume], [Prenume], [Nr_Tel], [Email], [ID_Job]) VALUES (48, N'Xavier', N'Elena', N'0753789012', N'XavierElena@yahoo.com', 16)
INSERT [dbo].[ANGAJATI] ([ID_Angajat], [Nume], [Prenume], [Nr_Tel], [Email], [ID_Job]) VALUES (49, N'Yasmine', N'Adrian', N'0744890123', N'YasmineAdrian@gmail.com', 5)
GO
INSERT [dbo].[ANGAJATI_SALI] ([ID_Angajati_Sala], [Data_Angajare], [ID_Sala], [ID_Angajat]) VALUES (1, CAST(N'2020-03-12' AS Date), 3, 1)
INSERT [dbo].[ANGAJATI_SALI] ([ID_Angajati_Sala], [Data_Angajare], [ID_Sala], [ID_Angajat]) VALUES (2, CAST(N'2020-05-22' AS Date), 12, 7)
INSERT [dbo].[ANGAJATI_SALI] ([ID_Angajati_Sala], [Data_Angajare], [ID_Sala], [ID_Angajat]) VALUES (3, CAST(N'2021-01-15' AS Date), 28, 15)
INSERT [dbo].[ANGAJATI_SALI] ([ID_Angajati_Sala], [Data_Angajare], [ID_Sala], [ID_Angajat]) VALUES (4, CAST(N'2019-11-03' AS Date), 5, 22)
INSERT [dbo].[ANGAJATI_SALI] ([ID_Angajati_Sala], [Data_Angajare], [ID_Sala], [ID_Angajat]) VALUES (5, CAST(N'2022-02-09' AS Date), 17, 30)
INSERT [dbo].[ANGAJATI_SALI] ([ID_Angajati_Sala], [Data_Angajare], [ID_Sala], [ID_Angajat]) VALUES (6, CAST(N'2023-04-18' AS Date), 33, 5)
INSERT [dbo].[ANGAJATI_SALI] ([ID_Angajati_Sala], [Data_Angajare], [ID_Sala], [ID_Angajat]) VALUES (8, CAST(N'2021-06-14' AS Date), 8, 20)
INSERT [dbo].[ANGAJATI_SALI] ([ID_Angajati_Sala], [Data_Angajare], [ID_Sala], [ID_Angajat]) VALUES (12, CAST(N'2020-12-08' AS Date), 31, 10)
INSERT [dbo].[ANGAJATI_SALI] ([ID_Angajati_Sala], [Data_Angajare], [ID_Sala], [ID_Angajat]) VALUES (13, CAST(N'2021-07-03' AS Date), 7, 18)
INSERT [dbo].[ANGAJATI_SALI] ([ID_Angajati_Sala], [Data_Angajare], [ID_Sala], [ID_Angajat]) VALUES (14, CAST(N'2019-05-19' AS Date), 24, 25)
INSERT [dbo].[ANGAJATI_SALI] ([ID_Angajati_Sala], [Data_Angajare], [ID_Sala], [ID_Angajat]) VALUES (15, CAST(N'2022-03-28' AS Date), 2, 33)
INSERT [dbo].[ANGAJATI_SALI] ([ID_Angajati_Sala], [Data_Angajare], [ID_Sala], [ID_Angajat]) VALUES (16, CAST(N'2023-02-14' AS Date), 30, 8)
INSERT [dbo].[ANGAJATI_SALI] ([ID_Angajati_Sala], [Data_Angajare], [ID_Sala], [ID_Angajat]) VALUES (17, CAST(N'2020-01-07' AS Date), 9, 16)
INSERT [dbo].[ANGAJATI_SALI] ([ID_Angajati_Sala], [Data_Angajare], [ID_Sala], [ID_Angajat]) VALUES (18, CAST(N'2021-08-22' AS Date), 16, 23)
INSERT [dbo].[ANGAJATI_SALI] ([ID_Angajati_Sala], [Data_Angajare], [ID_Sala], [ID_Angajat]) VALUES (19, CAST(N'2019-09-12' AS Date), 4, 31)
INSERT [dbo].[ANGAJATI_SALI] ([ID_Angajati_Sala], [Data_Angajare], [ID_Sala], [ID_Angajat]) VALUES (20, CAST(N'2022-10-19' AS Date), 21, 38)
INSERT [dbo].[ANGAJATI_SALI] ([ID_Angajati_Sala], [Data_Angajare], [ID_Sala], [ID_Angajat]) VALUES (21, CAST(N'2023-12-25' AS Date), 29, 4)
INSERT [dbo].[ANGAJATI_SALI] ([ID_Angajati_Sala], [Data_Angajare], [ID_Sala], [ID_Angajat]) VALUES (22, CAST(N'2020-04-30' AS Date), 13, 11)
INSERT [dbo].[ANGAJATI_SALI] ([ID_Angajati_Sala], [Data_Angajare], [ID_Sala], [ID_Angajat]) VALUES (24, CAST(N'2019-06-24' AS Date), 1, 26)
INSERT [dbo].[ANGAJATI_SALI] ([ID_Angajati_Sala], [Data_Angajare], [ID_Sala], [ID_Angajat]) VALUES (25, CAST(N'2022-01-31' AS Date), 18, 34)
INSERT [dbo].[ANGAJATI_SALI] ([ID_Angajati_Sala], [Data_Angajare], [ID_Sala], [ID_Angajat]) VALUES (26, CAST(N'2023-05-06' AS Date), 25, 9)
INSERT [dbo].[ANGAJATI_SALI] ([ID_Angajati_Sala], [Data_Angajare], [ID_Sala], [ID_Angajat]) VALUES (27, CAST(N'2020-09-13' AS Date), 6, 17)
INSERT [dbo].[ANGAJATI_SALI] ([ID_Angajati_Sala], [Data_Angajare], [ID_Sala], [ID_Angajat]) VALUES (28, CAST(N'2021-07-20' AS Date), 23, 24)
INSERT [dbo].[ANGAJATI_SALI] ([ID_Angajati_Sala], [Data_Angajare], [ID_Sala], [ID_Angajat]) VALUES (29, CAST(N'2019-11-28' AS Date), 11, 32)
INSERT [dbo].[ANGAJATI_SALI] ([ID_Angajati_Sala], [Data_Angajare], [ID_Sala], [ID_Angajat]) VALUES (30, CAST(N'2022-08-04' AS Date), 27, 39)
GO
INSERT [dbo].[JOB-URI] ([ID_Job], [Titlu], [Salariu]) VALUES (21,N'ANTRENOR  ', 1500)
INSERT [dbo].[JOB-URI] ([ID_Job], [Titlu], [Salariu]) VALUES (30, N'INGRIJITOR', 1600);
INSERT [dbo].[JOB-URI] ([ID_Job], [Titlu], [Salariu]) VALUES (31, N'PAZNIC    ', 1700);
INSERT [dbo].[JOB-URI] ([ID_Job], [Titlu], [Salariu]) VALUES (32, N'VANZATOR  ', 1800);
INSERT [dbo].[JOB-URI] ([ID_Job], [Titlu], [Salariu]) VALUES (33, N'ANTRENOR  ', 1500);
INSERT [dbo].[JOB-URI] ([ID_Job], [Titlu], [Salariu]) VALUES (34, N'INGRIJITOR', 1600);
INSERT [dbo].[JOB-URI] ([ID_Job], [Titlu], [Salariu]) VALUES (35, N'PAZNIC    ', 1700);
INSERT [dbo].[JOB-URI] ([ID_Job], [Titlu], [Salariu]) VALUES (36, N'VANZATOR  ', 1800);
INSERT [dbo].[JOB-URI] ([ID_Job], [Titlu], [Salariu]) VALUES (37, N'ANTRENOR  ', 1500);
INSERT [dbo].[JOB-URI] ([ID_Job], [Titlu], [Salariu]) VALUES (38, N'INGRIJITOR', 1600);
INSERT [dbo].[JOB-URI] ([ID_Job], [Titlu], [Salariu]) VALUES (39, N'PAZNIC    ', 1700);
INSERT [dbo].[JOB-URI] ([ID_Job], [Titlu], [Salariu]) VALUES (40, N'VANZATOR  ', 1800);
INSERT [dbo].[JOB-URI] ([ID_Job], [Titlu], [Salariu]) VALUES (41, N'ANTRENOR  ', 1500);
INSERT [dbo].[JOB-URI] ([ID_Job], [Titlu], [Salariu]) VALUES (42, N'INGRIJITOR', 1600);
INSERT [dbo].[JOB-URI] ([ID_Job], [Titlu], [Salariu]) VALUES (43, N'PAZNIC    ', 1700);
INSERT [dbo].[JOB-URI] ([ID_Job], [Titlu], [Salariu]) VALUES (44, N'VANZATOR  ', 1800);

GO
INSERT [dbo].[LOCATII] ([ID_Locatie], [Judet], [Oras], [Strada], [Numar]) VALUES (1, N'Bucuresti', N'Bucuresti', N'Iuliu Maniu', 231)
INSERT [dbo].[LOCATII] ([ID_Locatie], [Judet], [Oras], [Strada], [Numar]) VALUES (2, N'Iasi', N'Iasi', N'Stefan cel Mare', 456)
INSERT [dbo].[LOCATII] ([ID_Locatie], [Judet], [Oras], [Strada], [Numar]) VALUES (3, N'Timis', N'Timisoara', N'Victoriei', 789)
INSERT [dbo].[LOCATII] ([ID_Locatie], [Judet], [Oras], [Strada], [Numar]) VALUES (4, N'Bucuresti', N'Bucuresti', N'Unirii', 101)
INSERT [dbo].[LOCATII] ([ID_Locatie], [Judet], [Oras], [Strada], [Numar]) VALUES (5, N'Constanta', N'Constanta', N'Mamaia', 202)
INSERT [dbo].[LOCATII] ([ID_Locatie], [Judet], [Oras], [Strada], [Numar]) VALUES (6, N'Brasov', N'Brasov', N'Muresenilor', 303)
INSERT [dbo].[LOCATII] ([ID_Locatie], [Judet], [Oras], [Strada], [Numar]) VALUES (7, N'Craiova', N'Dolj', N'Calea Bucuresti', 404)
INSERT [dbo].[LOCATII] ([ID_Locatie], [Judet], [Oras], [Strada], [Numar]) VALUES (8, N'Ploiesti', N'Prahova', N'Mihai Viteazu', 505)
INSERT [dbo].[LOCATII] ([ID_Locatie], [Judet], [Oras], [Strada], [Numar]) VALUES (9, N'Sibiu', N'Sibiu', N'Piata Mare', 606)
INSERT [dbo].[LOCATII] ([ID_Locatie], [Judet], [Oras], [Strada], [Numar]) VALUES (10, N'Galati', N'Galati', N'Dunarii', 707)
INSERT [dbo].[LOCATII] ([ID_Locatie], [Judet], [Oras], [Strada], [Numar]) VALUES (11, N'Oradea', N'Bihor', N'Republicii', 808)
INSERT [dbo].[LOCATII] ([ID_Locatie], [Judet], [Oras], [Strada], [Numar]) VALUES (12, N'Arad', N'Arad', N'Revolutiei', 909)
INSERT [dbo].[LOCATII] ([ID_Locatie], [Judet], [Oras], [Strada], [Numar]) VALUES (13, N'Braila', N'Braila', N'Independentei', 111)
INSERT [dbo].[LOCATII] ([ID_Locatie], [Judet], [Oras], [Strada], [Numar]) VALUES (14, N'Suceava', N'Suceava', N'Stefan cel Mare', 222)
INSERT [dbo].[LOCATII] ([ID_Locatie], [Judet], [Oras], [Strada], [Numar]) VALUES (15, N'Bacau', N'Bacau', N'Unirii', 333)
INSERT [dbo].[LOCATII] ([ID_Locatie], [Judet], [Oras], [Strada], [Numar]) VALUES (16, N'Targu Mures', N'Mures', N'Victoriei', 444)
INSERT [dbo].[LOCATII] ([ID_Locatie], [Judet], [Oras], [Strada], [Numar]) VALUES (17, N'Baia Mare', N'Maramures', N'Avram Iancu', 555)
INSERT [dbo].[LOCATII] ([ID_Locatie], [Judet], [Oras], [Strada], [Numar]) VALUES (18, N'Alba Iulia', N'Alba', N'Stefan cel Mare', 666)
INSERT [dbo].[LOCATII] ([ID_Locatie], [Judet], [Oras], [Strada], [Numar]) VALUES (19, N'Buzau', N'Buzau', N'Independentei', 777)
INSERT [dbo].[LOCATII] ([ID_Locatie], [Judet], [Oras], [Strada], [Numar]) VALUES (20, N'Pitesti', N'Arges', N'Calea Bucuresti', 888)
INSERT [dbo].[LOCATII] ([ID_Locatie], [Judet], [Oras], [Strada], [Numar]) VALUES (21, N'Cluj', N'Cluj-Napoca', N'Avram Iancu', 999)
INSERT [dbo].[LOCATII] ([ID_Locatie], [Judet], [Oras], [Strada], [Numar]) VALUES (22, N'Iasi', N'Iasi', N'Stefan cel Mare', 121)
INSERT [dbo].[LOCATII] ([ID_Locatie], [Judet], [Oras], [Strada], [Numar]) VALUES (23, N'Timis', N'Timisoara', N'Victoriei', 232)
INSERT [dbo].[LOCATII] ([ID_Locatie], [Judet], [Oras], [Strada], [Numar]) VALUES (24, N'Bucuresti', N'Bucuresti', N'Unirii', 343)
INSERT [dbo].[LOCATII] ([ID_Locatie], [Judet], [Oras], [Strada], [Numar]) VALUES (25, N'Constanta', N'Constanta', N'Mamaia', 454)
INSERT [dbo].[LOCATII] ([ID_Locatie], [Judet], [Oras], [Strada], [Numar]) VALUES (26, N'Brasov', N'Brasov', N'Muresenilor', 565)
INSERT [dbo].[LOCATII] ([ID_Locatie], [Judet], [Oras], [Strada], [Numar]) VALUES (27, N'Craiova', N'Dolj', N'Calea Bucuresti', 676)
INSERT [dbo].[LOCATII] ([ID_Locatie], [Judet], [Oras], [Strada], [Numar]) VALUES (28, N'Ploiesti', N'Prahova', N'Mihai Viteazu', 787)
INSERT [dbo].[LOCATII] ([ID_Locatie], [Judet], [Oras], [Strada], [Numar]) VALUES (29, N'Sibiu', N'Sibiu', N'Piata Mare', 898)
INSERT [dbo].[LOCATII] ([ID_Locatie], [Judet], [Oras], [Strada], [Numar]) VALUES (30, N'Galati', N'Galati', N'Dunarii', 909)
GO
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (1, N'Andrei', N'Serb', 20, N'Masculin  ', 2)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (2, N'Maria', N'Popescu', 25, N'Feminin   ', 4)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (3, N'Ion', N'Ionescu', 30, N'Masculin  ', 6)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (4, N'Elena', N'Dumitru', 22, N'Feminin   ', 1)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (5, N'Cristian', N'Stoica', 28, N'Masculin  ', 5)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (6, N'Ana', N'Popa', 24, N'Feminin   ', 3)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (7, N'Radu', N'Constantinescu', 35, N'Masculin  ', 7)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (8, N'Andreea', N'Georgescu', 26, N'Feminin   ', 2)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (9, N'Mihai', N'Moldovan', 29, N'Masculin  ', 4)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (10, N'Elena', N'Dragomir', 23, N'Feminin   ', 6)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (11, N'Danut', N'Munteanu', 31, N'Masculin  ', 1)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (12, N'Oana', N'Gheorghiu', 27, N'Feminin   ', 5)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (13, N'Gabriel', N'Cristea', 33, N'Masculin  ', 3)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (14, N'Alexandra', N'Iovan', 21, N'Feminin   ', 7)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (15, N'Valentin', N'Florescu', 32, N'Masculin  ', 2)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (16, N'Andra', N'Matei', 26, N'Feminin   ', 4)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (17, N'Bogdan', N'Nistor', 28, N'Masculin  ', 6)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (18, N'Alina', N'Stanciu', 25, N'Feminin   ', 1)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (19, N'Ionut', N'Serban', 34, N'Masculin  ', 5)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (20, N'Catalina', N'Preda', 22, N'Feminin   ', 3)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (21, N'Lucian', N'Dinu', 29, N'Masculin  ', 7)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (22, N'Roxana', N'Avram', 27, N'Feminin   ', 2)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (23, N'Marian', N'Popovici', 30, N'Masculin  ', 4)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (24, N'Elena', N'Radulescu', 23, N'Feminin   ', 6)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (25, N'Adrian', N'Coman', 36, N'Masculin  ', 1)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (26, N'Mihaela', N'Marin', 25, N'Feminin   ', 5)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (27, N'Cristian', N'Ungureanu', 31, N'Masculin  ', 3)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (28, N'Ana-Maria', N'Gavrila', 28, N'Feminin   ', 2)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (29, N'Valentin', N'Radu', 33, N'Masculin  ', 4)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (30, N'Elena', N'Barbu', 24, N'Feminin   ', 6)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (31, N'Mihai', N'Dumitru', 29, N'Masculin  ', 1)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (32, N'Laura', N'Marinescu', 27, N'Feminin   ', 5)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (33, N'Andrei', N'Cojocaru', 34, N'Masculin  ', 3)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (34, N'Carmen', N'Negru', 23, N'Feminin   ', 7)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (35, N'Daniel', N'Ivan', 35, N'Masculin  ', 2)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (36, N'Anca', N'Balan', 26, N'Feminin   ', 4)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (37, N'Alexandru', N'Gheorghe', 31, N'Masculin  ', 6)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (38, N'Diana', N'Popovici', 28, N'Feminin   ', 1)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (39, N'Gabriel', N'Muresan', 30, N'Masculin  ', 5)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (40, N'Ana', N'Dumitrache', 22, N'Feminin   ', 3)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (41, N'Catalin', N'Stancu', 29, N'Masculin  ', 7)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (42, N'Andreea', N'Ionescu', 27, N'Feminin   ', 2)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (43, N'Vlad', N'Dobre', 33, N'Masculin  ', 4)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (44, N'Mara', N'Stanescu', 23, N'Feminin   ', 6)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (45, N'Robert', N'Gheorghita', 36, N'Masculin  ', 1)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (46, N'Elena', N'Grecu', 25, N'F         ', 5)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (48, N'Maria', N'Popescu', 25, N'Feminin   ', 5)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (49, N'Ion', N'Georgescu', 30, N'Masculin  ', 3)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (50, N'Elena', N'Ionescu', 22, N'Feminin   ', 6)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (51, N'Alex', N'Popa', 27, N'Masculin  ', 1)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (52, N'Ana', N'Marin', 23, N'Feminin   ', 4)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (53, N'Mihai', N'Dumitrescu', 29, N'Masculin  ', 7)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (54, N'Cristina', N'Stoica', 26, N'Feminin   ', 2)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (55, N'Gabriel', N'Balan', 24, N'Masculin  ', 5)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (56, N'Andreea', N'Gheorghe', 28, N'Feminin   ', 3)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (57, N'Dorin', N'Cojocaru', 21, N'Masculin  ', 6)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (58, N'Ioana', N'Dinu', 31, N'Feminin   ', 1)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (59, N'Adrian', N'Popovici', 19, N'Masculin  ', 4)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (60, N'Laura', N'Vasile', 33, N'Feminin   ', 7)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (61, N'Valentin', N'Radulescu', 32, N'Masculin  ', 2)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (62, N'Simona', N'Stancu', 29, N'Feminin   ', 5)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (63, N'Andrei', N'Popescu', 25, N'Masculin  ', 3)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (64, N'Ana', N'Badea', 27, N'Feminin   ', 6)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (65, N'Ionut', N'Ionescu', 23, N'Masculin  ', 1)
INSERT [dbo].[MEMBRI] ([ID_Membri], [Nume], [Prenume], [Varsta], [Gen], [ID_Abonament]) VALUES (66, N'Elena', N'Radu', 26, N'Feminin   ', 4)
GO
INSERT [dbo].[MEMBRI_SALI] ([ID_Membru_Sala], [Data_inregistrare], [ID_Sala], [ID_Membri]) VALUES (1, CAST(N'2020-03-12' AS Date), 3, 1)
INSERT [dbo].[MEMBRI_SALI] ([ID_Membru_Sala], [Data_inregistrare], [ID_Sala], [ID_Membri]) VALUES (2, CAST(N'2020-05-20' AS Date), 10, 2)
INSERT [dbo].[MEMBRI_SALI] ([ID_Membru_Sala], [Data_inregistrare], [ID_Sala], [ID_Membri]) VALUES (3, CAST(N'2021-01-15' AS Date), 5, 3)
INSERT [dbo].[MEMBRI_SALI] ([ID_Membru_Sala], [Data_inregistrare], [ID_Sala], [ID_Membri]) VALUES (4, CAST(N'2022-02-28' AS Date), 22, 4)
INSERT [dbo].[MEMBRI_SALI] ([ID_Membru_Sala], [Data_inregistrare], [ID_Sala], [ID_Membri]) VALUES (5, CAST(N'2022-04-05' AS Date), 15, 5)
INSERT [dbo].[MEMBRI_SALI] ([ID_Membru_Sala], [Data_inregistrare], [ID_Sala], [ID_Membri]) VALUES (6, CAST(N'2021-06-10' AS Date), 8, 6)
INSERT [dbo].[MEMBRI_SALI] ([ID_Membru_Sala], [Data_inregistrare], [ID_Sala], [ID_Membri]) VALUES (7, CAST(N'2021-09-22' AS Date), 31, 7)
INSERT [dbo].[MEMBRI_SALI] ([ID_Membru_Sala], [Data_inregistrare], [ID_Sala], [ID_Membri]) VALUES (8, CAST(N'2020-11-18' AS Date), 19, 8)
INSERT [dbo].[MEMBRI_SALI] ([ID_Membru_Sala], [Data_inregistrare], [ID_Sala], [ID_Membri]) VALUES (9, CAST(N'2020-07-02' AS Date), 12, 9)
INSERT [dbo].[MEMBRI_SALI] ([ID_Membru_Sala], [Data_inregistrare], [ID_Sala], [ID_Membri]) VALUES (10, CAST(N'2021-03-30' AS Date), 29, 10)
INSERT [dbo].[MEMBRI_SALI] ([ID_Membru_Sala], [Data_inregistrare], [ID_Sala], [ID_Membri]) VALUES (11, CAST(N'2022-01-05' AS Date), 7, 11)
INSERT [dbo].[MEMBRI_SALI] ([ID_Membru_Sala], [Data_inregistrare], [ID_Sala], [ID_Membri]) VALUES (12, CAST(N'2022-03-08' AS Date), 24, 12)
INSERT [dbo].[MEMBRI_SALI] ([ID_Membru_Sala], [Data_inregistrare], [ID_Sala], [ID_Membri]) VALUES (13, CAST(N'2020-10-15' AS Date), 14, 13)
INSERT [dbo].[MEMBRI_SALI] ([ID_Membru_Sala], [Data_inregistrare], [ID_Sala], [ID_Membri]) VALUES (14, CAST(N'2021-12-01' AS Date), 26, 14)
INSERT [dbo].[MEMBRI_SALI] ([ID_Membru_Sala], [Data_inregistrare], [ID_Sala], [ID_Membri]) VALUES (15, CAST(N'2022-04-20' AS Date), 4, 15)
INSERT [dbo].[MEMBRI_SALI] ([ID_Membru_Sala], [Data_inregistrare], [ID_Sala], [ID_Membri]) VALUES (16, CAST(N'2020-06-28' AS Date), 21, 16)
INSERT [dbo].[MEMBRI_SALI] ([ID_Membru_Sala], [Data_inregistrare], [ID_Sala], [ID_Membri]) VALUES (17, CAST(N'2020-08-17' AS Date), 28, 17)
INSERT [dbo].[MEMBRI_SALI] ([ID_Membru_Sala], [Data_inregistrare], [ID_Sala], [ID_Membri]) VALUES (18, CAST(N'2021-02-14' AS Date), 2, 18)
INSERT [dbo].[MEMBRI_SALI] ([ID_Membru_Sala], [Data_inregistrare], [ID_Sala], [ID_Membri]) VALUES (19, CAST(N'2021-07-23' AS Date), 17, 19)
INSERT [dbo].[MEMBRI_SALI] ([ID_Membru_Sala], [Data_inregistrare], [ID_Sala], [ID_Membri]) VALUES (20, CAST(N'2020-09-10' AS Date), 9, 20)
INSERT [dbo].[MEMBRI_SALI] ([ID_Membru_Sala], [Data_inregistrare], [ID_Sala], [ID_Membri]) VALUES (21, CAST(N'2021-11-05' AS Date), 6, 21)
INSERT [dbo].[MEMBRI_SALI] ([ID_Membru_Sala], [Data_inregistrare], [ID_Sala], [ID_Membri]) VALUES (22, CAST(N'2020-04-22' AS Date), 19, 22)
INSERT [dbo].[MEMBRI_SALI] ([ID_Membru_Sala], [Data_inregistrare], [ID_Sala], [ID_Membri]) VALUES (23, CAST(N'2022-02-08' AS Date), 12, 23)
INSERT [dbo].[MEMBRI_SALI] ([ID_Membru_Sala], [Data_inregistrare], [ID_Sala], [ID_Membri]) VALUES (24, CAST(N'2021-08-14' AS Date), 29, 24)
INSERT [dbo].[MEMBRI_SALI] ([ID_Membru_Sala], [Data_inregistrare], [ID_Sala], [ID_Membri]) VALUES (25, CAST(N'2020-12-30' AS Date), 7, 25)
INSERT [dbo].[MEMBRI_SALI] ([ID_Membru_Sala], [Data_inregistrare], [ID_Sala], [ID_Membri]) VALUES (26, CAST(N'2022-04-18' AS Date), 24, 26)
INSERT [dbo].[MEMBRI_SALI] ([ID_Membru_Sala], [Data_inregistrare], [ID_Sala], [ID_Membri]) VALUES (27, CAST(N'2020-09-02' AS Date), 14, 27)
INSERT [dbo].[MEMBRI_SALI] ([ID_Membru_Sala], [Data_inregistrare], [ID_Sala], [ID_Membri]) VALUES (28, CAST(N'2021-07-15' AS Date), 26, 28)
INSERT [dbo].[MEMBRI_SALI] ([ID_Membru_Sala], [Data_inregistrare], [ID_Sala], [ID_Membri]) VALUES (29, CAST(N'2022-01-25' AS Date), 4, 29)
INSERT [dbo].[MEMBRI_SALI] ([ID_Membru_Sala], [Data_inregistrare], [ID_Sala], [ID_Membri]) VALUES (30, CAST(N'2020-05-12' AS Date), 21, 30)
INSERT [dbo].[MEMBRI_SALI] ([ID_Membru_Sala], [Data_inregistrare], [ID_Sala], [ID_Membri]) VALUES (31, CAST(N'2021-11-30' AS Date), 2, 31)
INSERT [dbo].[MEMBRI_SALI] ([ID_Membru_Sala], [Data_inregistrare], [ID_Sala], [ID_Membri]) VALUES (32, CAST(N'2020-04-08' AS Date), 18, 32)
INSERT [dbo].[MEMBRI_SALI] ([ID_Membru_Sala], [Data_inregistrare], [ID_Sala], [ID_Membri]) VALUES (33, CAST(N'2022-02-15' AS Date), 11, 33)
INSERT [dbo].[MEMBRI_SALI] ([ID_Membru_Sala], [Data_inregistrare], [ID_Sala], [ID_Membri]) VALUES (34, CAST(N'2021-08-20' AS Date), 27, 34)
INSERT [dbo].[MEMBRI_SALI] ([ID_Membru_Sala], [Data_inregistrare], [ID_Sala], [ID_Membri]) VALUES (35, CAST(N'2020-12-12' AS Date), 5, 35)
INSERT [dbo].[MEMBRI_SALI] ([ID_Membru_Sala], [Data_inregistrare], [ID_Sala], [ID_Membri]) VALUES (36, CAST(N'2022-04-28' AS Date), 20, 36)
INSERT [dbo].[MEMBRI_SALI] ([ID_Membru_Sala], [Data_inregistrare], [ID_Sala], [ID_Membri]) VALUES (37, CAST(N'2020-09-18' AS Date), 13, 37)
INSERT [dbo].[MEMBRI_SALI] ([ID_Membru_Sala], [Data_inregistrare], [ID_Sala], [ID_Membri]) VALUES (38, CAST(N'2021-07-25' AS Date), 25, 38)
INSERT [dbo].[MEMBRI_SALI] ([ID_Membru_Sala], [Data_inregistrare], [ID_Sala], [ID_Membri]) VALUES (39, CAST(N'2022-01-30' AS Date), 3, 39)
INSERT [dbo].[MEMBRI_SALI] ([ID_Membru_Sala], [Data_inregistrare], [ID_Sala], [ID_Membri]) VALUES (40, CAST(N'2020-05-18' AS Date), 22, 40)
GO
INSERT [dbo].[SALI] ([ID_Sala], [Nume], [ID_Tip], [ID_Locatii], [Ora_inchidere], [Ora_deschidere]) VALUES (1, N'Enjoy_fit', 1, 3, CAST(N'22:30:00' AS Time), CAST(N'06:30:00' AS Time))
INSERT [dbo].[SALI] ([ID_Sala], [Nume], [ID_Tip], [ID_Locatii], [Ora_inchidere], [Ora_deschidere]) VALUES (2, N'Active_Space', 2, 15, CAST(N'23:00:00' AS Time), CAST(N'07:00:00' AS Time))
INSERT [dbo].[SALI] ([ID_Sala], [Nume], [ID_Tip], [ID_Locatii], [Ora_inchidere], [Ora_deschidere]) VALUES (3, N'Flex_Fitness', 3, 7, CAST(N'21:30:00' AS Time), CAST(N'06:00:00' AS Time))
INSERT [dbo].[SALI] ([ID_Sala], [Nume], [ID_Tip], [ID_Locatii], [Ora_inchidere], [Ora_deschidere]) VALUES (4, N'Power_Gym', 4, 18, CAST(N'20:00:00' AS Time), CAST(N'08:00:00' AS Time))
INSERT [dbo].[SALI] ([ID_Sala], [Nume], [ID_Tip], [ID_Locatii], [Ora_inchidere], [Ora_deschidere]) VALUES (5, N'Cardio_Fit', 5, 10, CAST(N'22:00:00' AS Time), CAST(N'05:30:00' AS Time))
INSERT [dbo].[SALI] ([ID_Sala], [Nume], [ID_Tip], [ID_Locatii], [Ora_inchidere], [Ora_deschidere]) VALUES (6, N'Elite_Training', 6, 25, CAST(N'21:30:00' AS Time), CAST(N'07:30:00' AS Time))
INSERT [dbo].[SALI] ([ID_Sala], [Nume], [ID_Tip], [ID_Locatii], [Ora_inchidere], [Ora_deschidere]) VALUES (7, N'Zen_Yoga', 7, 8, CAST(N'20:45:00' AS Time), CAST(N'06:45:00' AS Time))
INSERT [dbo].[SALI] ([ID_Sala], [Nume], [ID_Tip], [ID_Locatii], [Ora_inchidere], [Ora_deschidere]) VALUES (8, N'CrossFit_Nation', 8, 12, CAST(N'19:30:00' AS Time), CAST(N'09:00:00' AS Time))
INSERT [dbo].[SALI] ([ID_Sala], [Nume], [ID_Tip], [ID_Locatii], [Ora_inchidere], [Ora_deschidere]) VALUES (9, N'Swim_Fit', 9, 20, CAST(N'21:00:00' AS Time), CAST(N'07:30:00' AS Time))
INSERT [dbo].[SALI] ([ID_Sala], [Nume], [ID_Tip], [ID_Locatii], [Ora_inchidere], [Ora_deschidere]) VALUES (10, N'Dance_Studio', 10, 2, CAST(N'23:00:00' AS Time), CAST(N'18:00:00' AS Time))
INSERT [dbo].[SALI] ([ID_Sala], [Nume], [ID_Tip], [ID_Locatii], [Ora_inchidere], [Ora_deschidere]) VALUES (11, N'Boxing_Club', 11, 16, CAST(N'22:30:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[SALI] ([ID_Sala], [Nume], [ID_Tip], [ID_Locatii], [Ora_inchidere], [Ora_deschidere]) VALUES (12, N'Pilates_Haven', 1, 1, CAST(N'20:00:00' AS Time), CAST(N'07:00:00' AS Time))
INSERT [dbo].[SALI] ([ID_Sala], [Nume], [ID_Tip], [ID_Locatii], [Ora_inchidere], [Ora_deschidere]) VALUES (13, N'Dynamic_Fit', 2, 11, CAST(N'21:00:00' AS Time), CAST(N'06:30:00' AS Time))
INSERT [dbo].[SALI] ([ID_Sala], [Nume], [ID_Tip], [ID_Locatii], [Ora_inchidere], [Ora_deschidere]) VALUES (14, N'Wellness_Center', 3, 19, CAST(N'19:30:00' AS Time), CAST(N'08:30:00' AS Time))
INSERT [dbo].[SALI] ([ID_Sala], [Nume], [ID_Tip], [ID_Locatii], [Ora_inchidere], [Ora_deschidere]) VALUES (15, N'Fit_Factory', 4, 28, CAST(N'22:15:00' AS Time), CAST(N'07:15:00' AS Time))
INSERT [dbo].[SALI] ([ID_Sala], [Nume], [ID_Tip], [ID_Locatii], [Ora_inchidere], [Ora_deschidere]) VALUES (16, N'Cycle_Revolution', 5, 14, CAST(N'20:30:00' AS Time), CAST(N'06:00:00' AS Time))
INSERT [dbo].[SALI] ([ID_Sala], [Nume], [ID_Tip], [ID_Locatii], [Ora_inchidere], [Ora_deschidere]) VALUES (17, N'Intensity_Fitness', 6, 5, CAST(N'21:45:00' AS Time), CAST(N'07:30:00' AS Time))
INSERT [dbo].[SALI] ([ID_Sala], [Nume], [ID_Tip], [ID_Locatii], [Ora_inchidere], [Ora_deschidere]) VALUES (18, N'Harmony_Yoga', 7, 9, CAST(N'20:00:00' AS Time), CAST(N'07:00:00' AS Time))
INSERT [dbo].[SALI] ([ID_Sala], [Nume], [ID_Tip], [ID_Locatii], [Ora_inchidere], [Ora_deschidere]) VALUES (19, N'Revolution_CrossFit', 8, 22, CAST(N'19:00:00' AS Time), CAST(N'09:30:00' AS Time))
INSERT [dbo].[SALI] ([ID_Sala], [Nume], [ID_Tip], [ID_Locatii], [Ora_inchidere], [Ora_deschidere]) VALUES (20, N'Aqua_Fit', 9, 30, CAST(N'21:45:00' AS Time), CAST(N'07:45:00' AS Time))
INSERT [dbo].[SALI] ([ID_Sala], [Nume], [ID_Tip], [ID_Locatii], [Ora_inchidere], [Ora_deschidere]) VALUES (21, N'Rhythmic_Dance', 10, 6, CAST(N'22:30:00' AS Time), CAST(N'18:30:00' AS Time))
INSERT [dbo].[SALI] ([ID_Sala], [Nume], [ID_Tip], [ID_Locatii], [Ora_inchidere], [Ora_deschidere]) VALUES (22, N'Fight_Club', 11, 17, CAST(N'23:00:00' AS Time), CAST(N'12:30:00' AS Time))
INSERT [dbo].[SALI] ([ID_Sala], [Nume], [ID_Tip], [ID_Locatii], [Ora_inchidere], [Ora_deschidere]) VALUES (23, N'Stretch_Studio', 1, 23, CAST(N'20:45:00' AS Time), CAST(N'07:15:00' AS Time))
INSERT [dbo].[SALI] ([ID_Sala], [Nume], [ID_Tip], [ID_Locatii], [Ora_inchidere], [Ora_deschidere]) VALUES (24, N'Core_Fitness', 2, 13, CAST(N'21:30:00' AS Time), CAST(N'06:45:00' AS Time))
INSERT [dbo].[SALI] ([ID_Sala], [Nume], [ID_Tip], [ID_Locatii], [Ora_inchidere], [Ora_deschidere]) VALUES (25, N'Mindful_Wellness', 3, 26, CAST(N'19:30:00' AS Time), CAST(N'08:00:00' AS Time))
INSERT [dbo].[SALI] ([ID_Sala], [Nume], [ID_Tip], [ID_Locatii], [Ora_inchidere], [Ora_deschidere]) VALUES (26, N'Fit_Express', 4, 4, CAST(N'21:00:00' AS Time), CAST(N'07:30:00' AS Time))
INSERT [dbo].[SALI] ([ID_Sala], [Nume], [ID_Tip], [ID_Locatii], [Ora_inchidere], [Ora_deschidere]) VALUES (27, N'Spinning_Studio', 5, 21, CAST(N'22:15:00' AS Time), CAST(N'06:15:00' AS Time))
INSERT [dbo].[SALI] ([ID_Sala], [Nume], [ID_Tip], [ID_Locatii], [Ora_inchidere], [Ora_deschidere]) VALUES (28, N'Energetic_Fit', 6, 29, CAST(N'20:45:00' AS Time), CAST(N'07:45:00' AS Time))
INSERT [dbo].[SALI] ([ID_Sala], [Nume], [ID_Tip], [ID_Locatii], [Ora_inchidere], [Ora_deschidere]) VALUES (29, N'Zen_Yoga', 7, 24, CAST(N'21:30:00' AS Time), CAST(N'07:30:00' AS Time))
INSERT [dbo].[SALI] ([ID_Sala], [Nume], [ID_Tip], [ID_Locatii], [Ora_inchidere], [Ora_deschidere]) VALUES (30, N'CrossFit_Xtreme', 8, 27, CAST(N'19:45:00' AS Time), CAST(N'09:30:00' AS Time))
INSERT [dbo].[SALI] ([ID_Sala], [Nume], [ID_Tip], [ID_Locatii], [Ora_inchidere], [Ora_deschidere]) VALUES (31, N'Aqua_Aerobics', 9, 16, CAST(N'21:15:00' AS Time), CAST(N'07:15:00' AS Time))
INSERT [dbo].[SALI] ([ID_Sala], [Nume], [ID_Tip], [ID_Locatii], [Ora_inchidere], [Ora_deschidere]) VALUES (32, N'Dance_Fusion', 10, 8, CAST(N'23:00:00' AS Time), CAST(N'18:30:00' AS Time))
INSERT [dbo].[SALI] ([ID_Sala], [Nume], [ID_Tip], [ID_Locatii], [Ora_inchidere], [Ora_deschidere]) VALUES (33, N'Fight_Club', 11, 5, CAST(N'22:45:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[SALI] ([ID_Sala], [Nume], [ID_Tip], [ID_Locatii], [Ora_inchidere], [Ora_deschidere]) VALUES (34, N'Pilates_Perfection', 1, 10, CAST(N'20:30:00' AS Time), CAST(N'07:00:00' AS Time))
INSERT [dbo].[SALI] ([ID_Sala], [Nume], [ID_Tip], [ID_Locatii], [Ora_inchidere], [Ora_deschidere]) VALUES (35, N'Dynamic_Fit', 2, 19, CAST(N'21:00:00' AS Time), CAST(N'06:30:00' AS Time))
GO
INSERT [dbo].[TIPURI] ([ID_Tip], [Denumire], [Necesita_Asistenta]) VALUES (1, N'Sala de Forta', N'Nu')
INSERT [dbo].[TIPURI] ([ID_Tip], [Denumire], [Necesita_Asistenta]) VALUES (2, N'Sala de Judo', N'Da')
INSERT [dbo].[TIPURI] ([ID_Tip], [Denumire], [Necesita_Asistenta]) VALUES (3, N'Clase', N'Da')
INSERT [dbo].[TIPURI] ([ID_Tip], [Denumire], [Necesita_Asistenta]) VALUES (4, N'Sala de tonifiere', N'Nu')
INSERT [dbo].[TIPURI] ([ID_Tip], [Denumire], [Necesita_Asistenta]) VALUES (5, N'Sala de inot', N'Da')
INSERT [dbo].[TIPURI] ([ID_Tip], [Denumire], [Necesita_Asistenta]) VALUES (6, N'Sala destinata doar persoanelor de sex feminin', N'Nu')
INSERT [dbo].[TIPURI] ([ID_Tip], [Denumire], [Necesita_Asistenta]) VALUES (7, N'Sala de aerobic', N'Nu')
INSERT [dbo].[TIPURI] ([ID_Tip], [Denumire], [Necesita_Asistenta]) VALUES (8, N'Sala de ciclism indoor', N'Nu')
INSERT [dbo].[TIPURI] ([ID_Tip], [Denumire], [Necesita_Asistenta]) VALUES (9, N'Sala de crossfit', N'Nu')
INSERT [dbo].[TIPURI] ([ID_Tip], [Denumire], [Necesita_Asistenta]) VALUES (10, N'Sala de yoga / pilates', N'Nu')
INSERT [dbo].[TIPURI] ([ID_Tip], [Denumire], [Necesita_Asistenta]) VALUES (11, N'Sala de dans', N'Da')
GO
ALTER TABLE [dbo].[ANGAJATI]  WITH CHECK ADD  CONSTRAINT [FK_ANGAJATI_JOB-URI] FOREIGN KEY([ID_Job])
REFERENCES [dbo].[JOB-URI] ([ID_Job])
GO
ALTER TABLE [dbo].[ANGAJATI] CHECK CONSTRAINT [FK_ANGAJATI_JOB-URI]
GO
ALTER TABLE [dbo].[ANGAJATI_SALI]  WITH CHECK ADD  CONSTRAINT [FK_ANGAJATI SALI_ANGAJATI] FOREIGN KEY([ID_Angajat])
REFERENCES [dbo].[ANGAJATI] ([ID_Angajat])
GO
ALTER TABLE [dbo].[ANGAJATI_SALI] CHECK CONSTRAINT [FK_ANGAJATI SALI_ANGAJATI]
GO
ALTER TABLE [dbo].[ANGAJATI_SALI]  WITH CHECK ADD  CONSTRAINT [FK_ANGAJATI SALI_SALI] FOREIGN KEY([ID_Sala])
REFERENCES [dbo].[SALI] ([ID_Sala])
GO
ALTER TABLE [dbo].[ANGAJATI_SALI] CHECK CONSTRAINT [FK_ANGAJATI SALI_SALI]
GO
ALTER TABLE [dbo].[MEMBRI]  WITH CHECK ADD  CONSTRAINT [FK_MEMBRII_ABONAMENTE] FOREIGN KEY([ID_Abonament])
REFERENCES [dbo].[ABONAMENTE] ([ID_Abonament])
GO
ALTER TABLE [dbo].[MEMBRI] CHECK CONSTRAINT [FK_MEMBRII_ABONAMENTE]
GO
ALTER TABLE [dbo].[MEMBRI_SALI]  WITH CHECK ADD  CONSTRAINT [FK_MEMBRI SALI_SALI] FOREIGN KEY([ID_Sala])
REFERENCES [dbo].[SALI] ([ID_Sala])
GO
ALTER TABLE [dbo].[MEMBRI_SALI] CHECK CONSTRAINT [FK_MEMBRI SALI_SALI]
GO
ALTER TABLE [dbo].[MEMBRI_SALI]  WITH CHECK ADD  CONSTRAINT [FK_MEMBRII SALI_MEMBRII] FOREIGN KEY([ID_Membri])
REFERENCES [dbo].[MEMBRI] ([ID_Membri])
GO
ALTER TABLE [dbo].[MEMBRI_SALI] CHECK CONSTRAINT [FK_MEMBRII SALI_MEMBRII]
GO
ALTER TABLE [dbo].[SALI]  WITH CHECK ADD  CONSTRAINT [FK_SALI_LOCATII] FOREIGN KEY([ID_Locatii])
REFERENCES [dbo].[LOCATII] ([ID_Locatie])
GO
ALTER TABLE [dbo].[SALI] CHECK CONSTRAINT [FK_SALI_LOCATII]
GO
ALTER TABLE [dbo].[SALI]  WITH CHECK ADD  CONSTRAINT [FK_SALI_TIPURI] FOREIGN KEY([ID_Tip])
REFERENCES [dbo].[TIPURI] ([ID_Tip])
GO
ALTER TABLE [dbo].[SALI] CHECK CONSTRAINT [FK_SALI_TIPURI]
GO

SELECT COUNT(*) AS TotalStudentSubscriptions
FROM [dbo].[MEMBRI] M
JOIN [dbo].[ABONAMENTE] A
ON M.ID_Abonament = A.ID_Abonament
WHERE A.Tip = 'Student';


SELECT Nume
FROM SALI
WHERE Ora_deschidere < '09:00:00';


SELECT A.Nume, A.Prenume, J.Salariu, A.Nr_Tel
FROM [dbo].[ANGAJATI] A
JOIN [dbo].[JOB_URI] J
ON A.ID_Job = J.ID_Job
ORDER BY J.Salariu DESC;

SELECT S.Nume 
from [dbo].[SALI] S
Join [dbo].[ANGAJATI_SALI] A 
on S.ID_Sala = A.ID_Sala ;

SELECT * FROM [dbo].[JOB-URI];

SELECT ID_Angajati_Sala FROM [dbo].[ANGAJATI_SALI];

CREATE PROCEDURE GymDet
    @NecesitaAsistenta NVARCHAR(3),  
    @OraDeschidere TIME = NULL       
AS
BEGIN
    SET NOCOUNT ON;
    SELECT 
        S.ID_Sala,
        S.Nume AS NumeSala,
        T.Denumire AS TipSala,
        S.Ora_deschidere,
        S.Ora_inchidere,
        T.Necesita_Asistenta
    FROM 
        SALI S
    INNER JOIN 
        TIPURI T ON S.ID_Tip = T.ID_Tip
    WHERE 
        T.Necesita_Asistenta = @NecesitaAsistenta
        AND (@OraDeschidere IS NULL OR S.Ora_deschidere <= @OraDeschidere)
    ORDER BY 
        S.Ora_deschidere ASC;
END;
GO

EXEC GymDet @NecesitaAsistenta = 'Da';
EXEC GymDet @NecesitaAsistenta = 'Nu', @OraDeschidere = '07:30:00';

CREATE TABLE Audit_MembriSali (
    Audit_ID INT IDENTITY(1,1) PRIMARY KEY,
    ID_Membru_Sala INT NOT NULL,
    Data_inregistrare DATE NOT NULL,
    ID_Sala INT NOT NULL,
    ID_Membri INT NOT NULL,
    Operation NVARCHAR(50) NOT NULL,
    OperationDate DATETIME NOT NULL DEFAULT GETDATE()
);
GO

CREATE TRIGGER trg_Insert_MembriSali
ON MEMBRI_SALI
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO Audit_MembriSali (ID_Membru_Sala, Data_inregistrare, ID_Sala, ID_Membri, Operation)
    SELECT 
        ID_Membru_Sala, 
        Data_inregistrare, 
        ID_Sala, 
        ID_Membri, 
        'INSERT'
    FROM 
        INSERTED;

    PRINT 'Audit log entry created for new member registration.';
END;
GO

INSERT INTO MEMBRI_SALI (ID_Membru_Sala, Data_inregistrare, ID_Sala, ID_Membri)
VALUES (41, '2024-11-18', 2, 41);

SELECT * FROM Audit_MembriSali;

