create DATABASE ucekazgm_academics;
use ucekazgm_academics;
set global sql_mode = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

select count(*) from student_users;
select * from student_users;

CREATE DATABASE IF NOT EXISTS jntucek;

alter user 'root'@'localhost' identified with mysql_native_password by 'sandyblaze';

use jntucek;

CREATE TABLE IF NOT EXISTS students (
    student_roll CHAR(10),
    student_name VARCHAR(256) NOT NULL,
    passwd VARCHAR(256) NOT NULL,
    gender ENUM('M', 'F') NOT NULL,
    current_year ENUM('1', '2', '3', '4') NOT NULL,
    current_sem ENUM('1', '2') NOT NULL,
    mobile CHAR(10),
    corrent_status TINYINT DEFAULT 1,
    student_mail VARCHAR(256) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (student_roll)
);

select * from students;

insert into students
set
student_roll = '19021A0513',
student_name = 'Sudheer',
passwd = '12345',
gender = 'M',
current_year = '4',
current_sem = '1',
student_mail = 'pothulasudheer1212@gmail.com';
