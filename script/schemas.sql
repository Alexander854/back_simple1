
-- Crear la tabla 'alumno'
CREATE TABLE IF NOT EXISTS alumnos (
    dni INT(10) PRIMARY KEY NOT NULL,
    nombre VARCHAR(20),
    pass  VARCHAR(50)

);

-- Crear la tabla 'materia'
CREATE TABLE IF NOT EXISTS materia (
    id_m INT AUTO_INCREMENT PRIMARY KEY,
    nombre_materia VARCHAR(255)
);

-- Crear la tabla 'cursar' con claves foráneas
CREATE TABLE IF NOT EXISTS cursar (
    id_c INT AUTO_INCREMENT PRIMARY KEY,
    dni INT,
    id_m INT,
    FOREIGN KEY (dni) REFERENCES alumnos(dni),
    FOREIGN KEY (id_m) REFERENCES materia(id_m)
);