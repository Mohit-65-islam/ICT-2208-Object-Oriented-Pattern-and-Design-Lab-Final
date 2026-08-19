-- ============================================================
--  Tangail District Upazila Quiz  -  Database Schema & Seed Data
--  Covers: Tangail Sadar, Basail, Bhuapur, Delduar, Dhanbari,
--          Ghatail, Gopalpur, Kalihati, Madhupur, Mirzapur,
--          Nagarpur, Sakhipur
--  Topics: Crops, Geology/Rivers, Educational Institutions
-- ============================================================

CREATE DATABASE IF NOT EXISTS tangail_quiz_db;
USE tangail_quiz_db;

-- ------------------------------------------------------------
-- Table: questions
-- ------------------------------------------------------------
DROP TABLE IF EXISTS questions;
CREATE TABLE questions (
    id            INT AUTO_INCREMENT PRIMARY KEY,
    question_text VARCHAR(500) NOT NULL,
    option_a      VARCHAR(200) NOT NULL,
    option_b      VARCHAR(200) NOT NULL,
    option_c      VARCHAR(200) NOT NULL,
    option_d      VARCHAR(200) NOT NULL,
    correct_option CHAR(1) NOT NULL,   -- 'A', 'B', 'C', or 'D'
    category      VARCHAR(50) NOT NULL -- 'Crops', 'Geology', 'Education'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ------------------------------------------------------------
-- Table: results  (name + score saved after each quiz attempt)
-- ------------------------------------------------------------
DROP TABLE IF EXISTS results;
CREATE TABLE results (
    id            INT AUTO_INCREMENT PRIMARY KEY,
    player_name   VARCHAR(100) NOT NULL,
    score         INT NOT NULL,
    total_questions INT NOT NULL DEFAULT 10,
    attempt_time  TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ------------------------------------------------------------
-- Seed: 10 MCQs on Tangail District upazilas
-- (facts sourced from Banglapedia / Wikipedia)
-- ------------------------------------------------------------
INSERT INTO questions
(question_text, option_a, option_b, option_c, option_d, correct_option, category) VALUES

('How many upazilas does Tangail district consist of?',
 '10', '11', '12', '14', 'C', 'Geology'),

('Which is the largest upazila of Tangail district by area (450.71 sq km)?',
 'Madhupur', 'Ghatail', 'Mirzapur', 'Sakhipur', 'B', 'Geology'),

('Which upazila of Tangail district is the smallest by area (127.95 sq km)?',
 'Basail', 'Dhanbari', 'Delduar', 'Bhuapur', 'B', 'Geology'),

('Which river forms a natural barrier to the Madhupur forest on the Tangail side, running from Madhupur to Mirzapur?',
 'Jamuna', 'Bangshi', 'Lohajang', 'Dhaleshwari', 'B', 'Geology'),

('Which major river flows along Tangail Sadar upazila, alongside the Dhaleshwari and Lohajang?',
 'Padma', 'Jamuna', 'Meghna', 'Surma', 'B', 'Geology'),

('Which of these is NOT among the main crops of Ghatail upazila?',
 'Paddy', 'Jute', 'Mustard seed', 'Tea', 'D', 'Crops'),

('Which fruit is Madhupur upazila especially famous for exporting, alongside jackfruit and silk?',
 'Mango', 'Pineapple', 'Litchi', 'Papaya', 'B', 'Crops'),

('Tangail Sadar''s economy is dominated by which main source of income, at over 36%?',
 'Industry', 'Commerce', 'Agriculture', 'Transport', 'C', 'Crops'),

('Kumudini Government Women''s College, founded by philanthropist R.P. Saha, was established in Tangail Sadar in which year?',
 '1926', '1943', '1963', '1970', 'B', 'Education'),

('Mirzapur Cadet College (1963) and Bharateswari Homes (1945), both founded with support from R.P. Saha, are located in which upazila?',
 'Madhupur', 'Nagarpur', 'Mirzapur', 'Kalihati', 'C', 'Education');
