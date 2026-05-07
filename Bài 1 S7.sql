CREATE DATABASE CourseManagement;
USE CourseManagement;

CREATE TABLE Instructors (
    instructor_id INT PRIMARY KEY AUTO_INCREMENT,
    instructor_name VARCHAR(100) NOT NULL
);

CREATE TABLE Courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(150) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    instructor_id INT,
    FOREIGN KEY (instructor_id) REFERENCES Instructors(instructor_id)
);

INSERT INTO Instructors (instructor_name)
VALUES
('Nguyễn Văn B'),
('Lê Thị C'),
('Phạm Văn D'),
('Hoàng Minh E'),
('Trần Văn A'),
('Đỗ Thị F');
INSERT INTO Courses (course_name, price, instructor_id)
VALUES
('SQL Cơ Bản', 1000000, 1),
('Python Cho Người Mới', 1500000, 2),
('Java Spring Boot', 2000000, 5),
('Data Analysis', 1800000, 3),
('Machine Learning', 2500000, 5),
('HTML CSS JavaScript', 1000000, 4),
('ReactJS', 2000000, 6),
('NodeJS API', 2500000, 2),
('Thiết Kế Database', 1800000, 5);


SELECT *
FROM Courses
WHERE price IN (
    SELECT price
    FROM Courses
    WHERE instructor_id = 5
);