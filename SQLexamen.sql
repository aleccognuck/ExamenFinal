-- Crear la base de datos
CREATE DATABASE GestionConstructores;
GO

-- Usar la base de datos
USE GestionConstructores;
GO

-- Tabla de Empleados
CREATE TABLE Empleados (
    EmpleadoID INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(50) NOT NULL,
    Categoria NVARCHAR(20) NOT NULL CHECK (Categoria IN ('Administrador', 'Operario', 'Peón')),
    CorreoElectronico NVARCHAR(50) UNIQUE NOT NULL,
    Telefono NVARCHAR(20) NOT NULL
);

-- Tabla de Proyectos
CREATE TABLE Proyectos (
    ProyectoID INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(100) NOT NULL,
    Descripcion NVARCHAR(MAX),
    FechaInicio DATE NOT NULL DEFAULT GETDATE(),
    FechaFin DATE NULL
);

-- Tabla de Asignaciones
CREATE TABLE Asignaciones (
    AsignacionID INT PRIMARY KEY IDENTITY(1,1),
    EmpleadoID INT NOT NULL,
    ProyectoID INT NOT NULL,
    FechaAsignacion DATE NOT NULL DEFAULT GETDATE(),
    FOREIGN KEY (EmpleadoID) REFERENCES Empleados(EmpleadoID) ON DELETE CASCADE,
    FOREIGN KEY (ProyectoID) REFERENCES Proyectos(ProyectoID) ON DELETE CASCADE
);
GO

-- Procedimientos para la tabla Empleados
CREATE PROCEDURE InsertarEmpleado
    @Nombre NVARCHAR(50),
    @Categoria NVARCHAR(20),
    @CorreoElectronico NVARCHAR(50),
    @Telefono NVARCHAR(20)
AS
BEGIN
    INSERT INTO Empleados (Nombre, Categoria, CorreoElectronico, Telefono)
    VALUES (@Nombre, @Categoria, @CorreoElectronico, @Telefono);
END;
GO

CREATE PROCEDURE ConsultarEmpleados
AS
BEGIN
    SELECT * FROM Empleados;
END;
GO

CREATE PROCEDURE ActualizarEmpleado
    @EmpleadoID INT,
    @Nombre NVARCHAR(50),
    @Categoria NVARCHAR(20),
    @CorreoElectronico NVARCHAR(50),
    @Telefono NVARCHAR(20)
AS
BEGIN
    UPDATE Empleados
    SET Nombre = @Nombre, Categoria = @Categoria, CorreoElectronico = @CorreoElectronico, Telefono = @Telefono
    WHERE EmpleadoID = @EmpleadoID;
END;
GO

CREATE PROCEDURE EliminarEmpleado
    @EmpleadoID INT
AS
BEGIN
    DELETE FROM Empleados WHERE EmpleadoID = @EmpleadoID;
END;
GO

-- Procedimientos para la tabla Proyectos
CREATE PROCEDURE InsertarProyecto
    @Nombre NVARCHAR(100),
    @Descripcion NVARCHAR(MAX),
    @FechaInicio DATE,
    @FechaFin DATE
AS
BEGIN
    INSERT INTO Proyectos (Nombre, Descripcion, FechaInicio, FechaFin)
    VALUES (@Nombre, @Descripcion, @FechaInicio, @FechaFin);
END;
GO

CREATE PROCEDURE ConsultarProyectos
AS
BEGIN
    SELECT * FROM Proyectos;
END;
GO

CREATE PROCEDURE ActualizarProyecto
    @ProyectoID INT,
    @Nombre NVARCHAR(100),
    @Descripcion NVARCHAR(MAX),
    @FechaInicio DATE,
    @FechaFin DATE
AS
BEGIN
    UPDATE Proyectos
    SET Nombre = @Nombre, Descripcion = @Descripcion, FechaInicio = @FechaInicio, FechaFin = @FechaFin
    WHERE ProyectoID = @ProyectoID;
END;
GO

CREATE PROCEDURE EliminarProyecto
    @ProyectoID INT
AS
BEGIN
    DELETE FROM Proyectos WHERE ProyectoID = @ProyectoID;
END;
GO

-- Procedimientos para la tabla Asignaciones
CREATE PROCEDURE InsertarAsignacion
    @EmpleadoID INT,
    @ProyectoID INT
AS
BEGIN
    INSERT INTO Asignaciones (EmpleadoID, ProyectoID, FechaAsignacion)
    VALUES (@EmpleadoID, @ProyectoID, GETDATE());
END;
GO

CREATE PROCEDURE ConsultarAsignaciones
AS
BEGIN
    SELECT A.AsignacionID, E.Nombre AS Empleado, P.Nombre AS Proyecto, A.FechaAsignacion
    FROM Asignaciones A
    INNER JOIN Empleados E ON A.EmpleadoID = E.EmpleadoID
    INNER JOIN Proyectos P ON A.ProyectoID = P.ProyectoID;
END;
GO

CREATE PROCEDURE EliminarAsignacion
    @AsignacionID INT
AS
BEGIN
    DELETE FROM Asignaciones WHERE AsignacionID = @AsignacionID;
END;
GO
