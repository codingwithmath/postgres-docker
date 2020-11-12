ALTER TABLE materia
ADD COLUMN materia_id serial NOT NULL UNIQUE PRIMARY KEY;

ALTER TABLE materia
ADD COLUMN professor_id INT NOT NULL,
ADD CONSTRAINT fk_professor FOREIGN KEY(professor_id)
    REFERENCES professor(professor_id);

ALTER TABLE materia
ADD COLUMN curso_id INT NOT NULL,
ADD CONSTRAINT fk_curso FOREIGN KEY(curso_id)
    REFERENCES curso(curso_id)