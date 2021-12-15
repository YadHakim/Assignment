
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE TABLE `customer` (
  `UserID` int(11) NOT NULL,
  `Name` varchar(11) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Acc_Number` int(25) NOT NULL,
  `IFSC` varchar(20) NOT NULL,
  `Balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO `customer` (`UserID`, `Name`, `Email`, `Acc_Number`, `IFSC`, `Balance`) VALUES
(448966, 'Yad', 'Yad@gmail.com', 14398, 'ASQ9981562', 13900),
(346578, 'Hakim', 'Hakim@gmail.com', 223367, 'AS189231', 40800),
(346569, 'John', 'John@gmail.com', 224456, 'AS189754V', 91000),
(9045864, 'Ali', 'Ali@gmail.com', 349456, 'AC3475370D', 86100),
(9045236, 'Mike', 'Mike@gmail.com', 349756, 'AC3465890D', 91000),
(446516, 'Vaishnvee', 'vaishnvee169@gmail.com', 1431221, 'WWQ9551562', 8000),
(841652, 'Faruk', 'Faruk@outlook.com', 3162123, 'SD9856785X', 903450),
(876815, 'User1', 'User1@gmial.com', 3294892, 'AS576457S', 34400),
(847543, 'User2', 'User2@outlook.com', 8962123, 'SD985675Y', 89800),
(87653, 'User3', 'User3@yahoo.com', 9569876, 'SA875436SD', 74360);

CREATE TABLE `transfer` (
  `s_name` varchar(10) NOT NULL,
  `s_acc_no` int(11) NOT NULL,
  `r_name` varchar(10) NOT NULL,
  `r_acc_no` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `transfer` (`s_name`, `s_acc_no`, `r_name`, `r_acc_no`, `amount`, `date_time`) VALUES
('Yad', 8962123, 'Hakim', 3294892, 200, '2021-05-02 09:40:57'),
('User1', 9569876, 'User2', 223367, 10000, '2021-05-02 09:53:43'),
('User2', 9569876, 'User1', 3294892, 200, '2021-05-02 09:53:59'),
('User3', 1431221, 'User2', 224456, 2000, '2021-05-02 09:58:39'),
('User1', 14398, 'User3', 349456, 100, '2021-05-02 10:19:48'),
('User1', 3294892, 'Faruk', 14398, 10000, '2021-05-02 10:23:12'),
('User2', 14398, 'Mike', 349756, 1000, '2021-05-02 10:24:29'),
('Ali', 349456, 'User1', 3294892, 4000, '2021-05-02 10:31:01'),
('Ali', 14398, 'Mike', 9569876, 5000, '2021-05-03 05:36:51');

ALTER TABLE `customer`
  ADD PRIMARY KEY (`Acc_Number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
