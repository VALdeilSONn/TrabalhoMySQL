CREATE TABLE `Aluno` (
  `ID` ID PRIMARY KEY,
  `name` varchar(100),
  `idade` int(2),
  `endereco` varchar(100),
  `telefone` int(20),
  `responsavel` varchar(100),
  `matricula` int(100)
);

CREATE TABLE `Curso` (
  `ID` ID PRIMARY KEY,
  `matricula_aluno` varchar(100),
  `tuno` varchar(20),
  `presenca` int(6)
);

CREATE TABLE `Turma` (
  `ID` ID PRIMARY KEY,
  `matricula_aluno_cur` varchar(100),
  `turno_curso` varchar(20),
  `horario` int(5),
  `presenca_curso` int(6)
);

CREATE TABLE `Professor` (
  `ID` ID PRIMARY KEY,
  `matricula` int(100),
  `nome` varchar(100),
  `idade` int(2),
  `matricula_aluno_turma` varchar(100),
  `horario_turma` int(5),
  `presenca_curso_turma` int(6)
);

ALTER TABLE `Curso` ADD FOREIGN KEY (`matricula_aluno`) REFERENCES `Aluno` (`matricula`);

ALTER TABLE `Turma` ADD FOREIGN KEY (`presenca_curso`) REFERENCES `Curso` (`presenca`);

ALTER TABLE `Turma` ADD FOREIGN KEY (`turno_curso`) REFERENCES `Curso` (`tuno`);

ALTER TABLE `Professor` ADD FOREIGN KEY (`presenca_curso_turma`) REFERENCES `Turma` (`presenca_curso`);

ALTER TABLE `Professor` ADD FOREIGN KEY (`horario_turma`) REFERENCES `Turma` (`horario`);

ALTER TABLE `Professor` ADD FOREIGN KEY (`matricula_aluno_turma`) REFERENCES `Aluno` (`matricula`);

ALTER TABLE `Turma` ADD FOREIGN KEY (`matricula_aluno_cur`) REFERENCES `Curso` (`matricula_aluno`);

ALTER TABLE `Professor` ADD FOREIGN KEY (`matricula_aluno_turma`) REFERENCES `Turma` (`matricula_aluno_cur`);
