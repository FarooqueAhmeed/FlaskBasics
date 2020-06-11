CREATE TABLE `employees` (
  `Name` varchar(200) NOT NULL,
  `Designation` text NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`Name`, `Designation`, `Address`, `Phone`) VALUES
('Elon Musk', 'Innovator', 'Bangalore ', '77777777'),
('Steve Jobs ', 'CEO', 'Bangalore', '999999999'),
('Tom Cook ', 'CTO', 'Bangalore ', '8888888');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`Name`);
COMMIT;
