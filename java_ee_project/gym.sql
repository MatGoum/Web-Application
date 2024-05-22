-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Εξυπηρετητής: 127.0.0.1
-- Χρόνος δημιουργίας: 29 Απρ 2024 στις 22:14:41
-- Έκδοση διακομιστή: 10.4.27-MariaDB
-- Έκδοση PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `gym`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `members`
--

INSERT INTO `members` (`id`, `name`, `email`, `phone`) VALUES
(36055, 'John Doe', 'hello@gmail.com', '398-3423-389'),
(309845, 'Jane Doe', 'jdoe@gmail.com', '983-392-458'),
(880187, 'James Hargreave', 'jharg@yahoo.com', '983-343-9621');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `member_workouts`
--

CREATE TABLE `member_workouts` (
  `id` int(11) NOT NULL,
  `workout_id` int(11) NOT NULL,
  `member_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `member_workouts`
--

INSERT INTO `member_workouts` (`id`, `workout_id`, `member_id`) VALUES
(19230, 980775, '880187'),
(301672, 683975, '309845'),
(382179, 262183, '880187'),
(625012, 205515, '309845'),
(651847, 513790, '309845');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `workouts`
--

CREATE TABLE `workouts` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `workouts`
--

INSERT INTO `workouts` (`id`, `type`, `level`, `duration`) VALUES
(262183, 'Full body', 'Advanced', '4'),
(683975, 'Full body', 'Advanced', '3');

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `member_workouts`
--
ALTER TABLE `member_workouts`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `workouts`
--
ALTER TABLE `workouts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT για άχρηστους πίνακες
--

--
-- AUTO_INCREMENT για πίνακα `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=880188;

--
-- AUTO_INCREMENT για πίνακα `member_workouts`
--
ALTER TABLE `member_workouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=651848;

--
-- AUTO_INCREMENT για πίνακα `workouts`
--
ALTER TABLE `workouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=980776;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
