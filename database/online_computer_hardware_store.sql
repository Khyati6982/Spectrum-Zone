-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220905.b20d7f3a04
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2022 at 10:28 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_computer_hardware_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `po_id` int(10) NOT NULL,
  `u_id` int(10) NOT NULL,
  `cart_total` varchar(100) NOT NULL,
  `bill_fname` varchar(50) NOT NULL,
  `bill_lname` varchar(50) NOT NULL,
  `bill_add` varchar(100) NOT NULL,
  `bill_city` varchar(10) NOT NULL,
  `bill_email` varchar(50) NOT NULL,
  `bill_phone` varchar(10) NOT NULL,
  `status` varchar(15) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`po_id`, `u_id`, `cart_total`, `bill_fname`, `bill_lname`, `bill_add`, `bill_city`, `bill_email`, `bill_phone`, `status`, `date`) VALUES
(1, 2, '7300', 'Ragini', 'S', '#45, 5th Phase, J P Nagar', 'Bangalore', 'ragni21@gmail.com', '8890324520', 'delivered', '2022-09-02 16:09:46'),
(2, 3, '1390', 'Sameer', 'Gupta', 'Flat No: 804, High View Apts, Bandra', 'Mumbai', 'sameer@gmail.com', '7980573396', '', '2022-09-02 16:01:51'),
(3, 4, '2100', 'Sheetal', 'Kapoor', '#21, 2nd Main Road, Tilak Nagar', 'Delhi', 'sheetalk@gmail.com', '8776940395', '', '2022-09-02 16:04:03'),
(4, 5, '10839', 'Madhu ', 'Iyer', 'Flat No: 112, Comfort Home Apts, 3rd Block, Padur Main Road', 'Chennai', 'madhui@gmail.com', '7699705074', '', '2022-09-02 16:06:43'),
(5, 6, '9665', 'Rohit', 'V', 'Flat No: 301, Legend Apts, Habsiguda', 'Hyderabad', 'rohitv@gmail.com', '9985726529', '', '2022-09-02 16:08:45');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `c_id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `quantity` int(10) NOT NULL,
  `u_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `u_id` int(10) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL,
  `status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`u_id`, `fname`, `lname`, `username`, `email`, `password`, `status`) VALUES
(1, 'Khyati', 'V', 'Khyati', 'admin@admin.com', 'admin', 'admin'),
(2, 'Ragini', 'S', 'Ragini', 'ragini21@gmail.com', 'rags21', ''),
(3, 'Sameer', 'Gupta', 'Sameer', 'sameer@gmail.com', 'samas', ''),
(4, 'Sheetal', 'Kapoor', 'Sheetal', 'sheetalk@gmail.com', 'shetu', ''),
(5, 'Madhu', 'Iyer', 'Madhu', 'madhui@gmail.com', 'MaDdy', ''),
(6, 'Rohit', 'V', 'Rohit', 'rohitv@gmail.com', 'rohiv', ''),
(7, 'Ragini', 'Joshi', 'Ragini21', 'raginijoshi@gmail.com', 'raginijosh', '');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `p_id` int(10) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_category` varchar(20) NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `product_des` varchar(1000) NOT NULL,
  `file_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`p_id`, `product_name`, `product_category`, `product_price`, `product_des`, `file_name`) VALUES
(1, 'Samsung Bezzel Less LED Monitor', 'Monitor', '11499.00', 'Display - 24 inch |\r\nDisplay Type - LED |\r\nResolution - FULL HD (1920 X 1080 Pixels) |\r\nRefresh Rate - 75 Hz |\r\nWeight - 2.7 Kg |\r\nWarranty - 3 years ', 'Monitor11.jpg'),
(2, 'LG Full HD IPS Monitor', 'Monitor', '10699.00', 'Display - 22 inch |\r\nDisplay Type - LCD |\r\nResolution - FULL HD (1920 X 1080 Pixels) |\r\nRefresh Rate - 75 Hz |\r\nWeight - 2.8 Kg |\r\nWarranty - 3 years ', 'Monitor21.jpg'),
(3, 'Acer Full HD IPS Ultra Slim Monitor', 'Monitor', '10499.00', 'Display - 21.5 inch |\r\nDisplay Type - LED |\r\nResolution - FULL HD (1920 X 1080 Pixels) |\r\nRefresh Rate - 75 Hz |\r\nWeight - 2.5 Kg |\r\nWarranty - 3 years ', 'Monitor31.jpg'),
(4, 'Dell KB216 Wired Multimedia USB Keyboard', 'Keyboard', '569.00', 'Interface - USB |\r\nHot Keys Function - Volume, mute, play/pause, backward, forward |\r\nKeys Style - Chiclet |\r\nWidth - 17.4 inch |\r\nDepth - 5 inch |\r\nHeight - 1 inch |\r\nWeight - 0.5 Kg |\r\nWarranty - 1 year', 'Keyboard11.jpg'),
(5, 'HP 100 Wired USB Keyboard', 'Keyboard', '669.00', 'Interface - USB |\r\nWidth - 45 cm |\r\nHeight - 2.53 cm |\r\nDepth - 14.75 cm |\r\nCable Length - 1500 mm |\r\nWeight - 490 g |\r\nWarranty - 1 year', 'Keyboard21.jpg'),
(6, 'Logitech K120 Wired USB Keyboard', 'Keyboard', '785.00', 'Key type - Deep profile |\nHeight: 155 mm |\nWidth: 450 mm |\nDepth: 23.5 mm |\nWeight: 550 g |\nCable length: 150 cm |\nWarranty - 3 years', 'Keyboard31.jpg'),
(7, ' Logitech K480 Wireless Multi-Device Keyboard', 'Keyboard', '2495.00', 'Bluetooth Wireless range -  > 10m wireless range |\nIndicator - Battery Indicator Light (LED) |\nBattery - 2 x AAA (included) |\nBattery life - 24 months |\nHeight - 195 mm |\nWidth - 299 mm |\nDepth - 20 mm |\nWeight - 820 g |\nColors Available - Black, White |\nWarranty - 1 year', 'Keyboard41.jpg'),
(8, 'HP X1000 Wired Mouse', 'Mouse', '399.00', 'Interface - USB | \r\nHeight - 3.9 cm | \r\nWidth - 9.5 cm | \r\nWeight - 90 g | \r\nColors Available - Black, Grey | \r\nBattery Life - 1 year |\r\nWarranty - 1 year', 'Mouse11.jpg'),
(9, 'Logitech M90 Wired USB Mouse', 'Mouse', '370.00', 'Interface - USB |\r\nWidth - 2.44 inch |\r\nHeight - 1.5 inch |\r\nDepth - 4.45 inch | \r\nWeight - 90 g |\r\nColors Available - Black, Blue |\r\nWarranty - 3 years\r\n', 'Mouse21.jpg'),
(10, 'Dell MS116 Wired Optical Mouse', 'Mouse', '270.00', 'Interface - USB |\r\nMovement Detection Technology - Optical |\r\nMovement Resolution - 1000 dpi |\r\nCable Length - 6 ft |\r\nColor - Black |\r\nWeight - 90 g', 'Mouse31.jpg'),
(11, 'Logitech  M221 Mouse', 'Mouse', '695.00', 'Interface - USB |\r\nTechnology Used - Wireless, Optical |\r\nWidth - 6 cm |\r\nHeight - 9.9 cm |\r\nDepth - 3.9 cm |\r\nBluetooth - Yes |\r\nWireless Frequency - 2.4 GHz |\r\nBattery Type - 1AA |\r\nColors Available - Black, Blue, Red, White, Rose |\r\nWarranty - 3 years', 'Mouse41.jpg'),
(12, 'Dell WM118 Mouse', 'Mouse', '709.00', 'Width - 6.3 cm |\r\nHeight - 3.44 cm |\r\nWeight - 82 g |\r\nBluetooth - Yes |\r\nEffective Range - 10 m |\r\nBattery Type - 1 AA |\r\nWarranty - 1 year ', 'Mouse51.jpg'),
(13, 'Lenovo 300 Wireless Mouse', 'Mouse', '645.00', 'Height - 1.2 inch |\r\nWidth - 2.2 inch |\r\nDepth - 3.86 inch |\r\nWeight - 56 g |\r\nWireless Frequency -2.4 GHz |\r\nBattery Type - 1AA |\r\nBluetooth - No |\r\nMovement Detection Technology - Laser |\r\nWarranty - 1 year ', 'Mouse61.jpg'),
(14, 'Thermaltake V200CA-1K8-00M1WN-01 CPU Cabinet Case', 'CPU Cabinet Case', '4549.00', 'Case Type - Middle Tower |\r\nDimension (H X W X D) - 17.6 X 8.3 X 17.6 inch |\r\nNet Weight - 7.1 Kg |\r\nSide Panel - 0.4cm Tempered Glass x 1\r\nExpansion Slots - 7 |\r\nMotherboards - 6.7” x 6.7” (Mini ITX), 9.6” x 9.6” (Micro ATX), 12” x 9.6” (ATX) |\r\nColor - Black |\r\nWarranty - 3 years\r\n', 'Case11.jpg'),
(15, 'Corsair Carbide Series CC-9011050-WW CPU Cabinet Case', 'CPU Cabinet Case', '3900.00', 'Type - Gaming Cabinet |\r\nCase Type - Middle Tower |\r\nMotherboard Compatibility - Mini-ITX, Micro-ATX, ATX |\r\nExternal 5.25\" Drive Bays - 2 |\r\nInternal 3.5\" Drive Bays - 4|\r\nExpansion Slots - 7|\r\nWeight - 4.8 Kg |\r\nColor - Black |\r\nWarranty - 2 years', 'Case21.jpg'),
(16, 'Chiptronex GX3000 RGB Mid Tower CPU Cabinet Case', 'CPU Cabinet Case', '4000.00', 'Type - Middle Tower |\r\nMotherboard Compatibility - ATX, Micro-ATX, Mini-ITX |\r\nCase Drive Bays - 2 x 3.5 HDD, 2 X 2.5 SSD |\r\nMax Radiator Support - 240 |\r\nMax Fan Support - 6 |\r\nSide Panel - Transparent |\r\nWeight - 5.6 Kg |\r\nCase Dimensions - 405 x 205 x 450mm |\r\nWarranty - 1 year', 'Case31.jpg'),
(17, 'ASUS Prime H610M-E D4 Motherboard', 'Motherboard', '7695.00', 'Chipset - Intel H610 Chipset |\r\nMemory - 2 x DIMM, Max. 64GB, DDR4 3200/3000/2933/2800/2666/2400/2133 Non-ECC, Un-buffered Memory |\r\nGraphics - 1 x DisplayPort, 1 x D-Sub port, 1 x HDMI port |\r\nExpansion Slots - Intel 12th Gen Processors, 1 x PCIe 4.0 x16 slot, Intel H610 Chipset, 1 x PCIe 3.0 x1 slot |\r\nStorage - Total supports 2 x M.2 slots and 4 x SATA 6Gb/s ports |\r\nEthernet - 1 x Realtek 1Gb Ethernet', 'Motherboard11.jpg'),
(18, 'GIGABYTE H510M H Motherboard', 'Motherboard', '6290.00', 'Chipset	- Intel H510 Express Chipset |\r\nLAN - Realtek GbE LAN chip (1 Gbit/100 Mbit) |\r\nI/O Controller - iTE I/O Controller Chip |\r\nBundled Software - Norton Internet Security (OEM version), Realtek  8118 Gaming LAN Bandwidth Control Utility |\r\nForm Factor	 - Micro ATX Form Factor; 24.4 cm x 21.0 cm |\r\nWarranty - 3 years', 'Motherboard21.jpg'),
(19, 'MSI MPG B550 Gaming Edge WiFi Motherboard', 'Motherboard', '19750.00', 'CPU (Max Support) - Ryzen 9 |\r\nSocket -AM4 |\r\nChipset - AMD B550 Chipset |\r\nMemory - Supports DDR4 by JEDEC and A-XMP OC MODE |\r\nMemory Channel - Dual |\r\nDIMM Slots - 4 |\r\nForm Factor - ATX |\r\nLAN - 1x Realtek RTL8125B 2.5G LAN |\r\nWarranty - 3 years ', 'Motherboard31.jpg'),
(20, 'ASUS ROG Strix B550-F Gaming WiFi Motherboard', 'Motherboard', '23330.00', 'CPU Socket - AM4 |\r\nRAM Memory  - DDR4 |\r\nCompatible Processors - AMD 3rd Generation Ryzen |\r\nChipset Type - AMD B550 |\r\nMemory Clock Speed - 4400 MHz |\r\nConnectivity - Supports HDMI 2. 1 (4K@60HZ) |\r\nWarranty - 3 years', 'Motherboard41.jpg'),
(21, 'AMD Ryzen 3 3200G Processor', 'Processor', '10899.00', 'CPU Cores - 4 |\r\nThreads - 4 |\r\nMax. Boost Clock - Up to 4.0GHz |\r\nBase Clock - 3.6GHz |\r\nL1 Cache - 384KB |\r\nL2 Cache -2MB |\r\nL3 Cache - 4MB |\r\nDefault TDP - 65W |\r\nAMD Configurable TDP (cTDP) - 45-65W |\r\nCPU Socket - AM4 |\r\nWarranty - 3 years', 'Processor11.jpg'),
(22, 'Intel Core i5 - 10400 Processor', 'Processor', '14590.00', 'Total Cores - 6 |\r\nTotal Threads - 12 |\r\nMax Turbo Frequency - 4.30 GHz |\r\nProcessor Base Frequency- 2.90 GHz |\r\nCache - 12 MB Intel Smart Cache |\r\nBus Speed - 8 GT/s |\r\nMax Memory Size - 128 GB |\r\nMemory Types  - DDR4-2666 |\r\nMemory Channels - 2 |\r\nMax Memory Bandwidth - 41.6 GB/s |\r\nWarranty - 3 years', 'Processor21.jpg'),
(23, 'Corsair Vengeance LED RAM', 'RAM', '15999.00', 'Memory Type - DDR4 |\r\nMemory Size  -16GB (2 x 8GB) |\r\nTested Voltage - 1.35V |\r\nTested Speed - 3200 |\r\nMemory Color - Black |\r\nLED Lighting - White |\r\nPackage Memory Format - DIMM |\r\nPackage Memory Pin - 288 |\r\nColors Available - Blue, Red |\r\nWarranty 10 years\r\n', 'RAM11.jpg'),
(24, 'Kingston HyperX Fury RAM', 'RAM', '8450.00', 'Computer Memory Size -16 GB |\r\nRAM Memory Technology - DDR4 |\r\nMemory Speed - 3000 MHz |\r\nVoltage - 1.2 Volts |\r\nWarranty - 1 year', 'RAM21.jpg'),
(25, 'Seagate Barracuda ST1000DM010 HDD', 'HDD', '3200.00', 'Drive Type - Internal |\r\nCapacity - 1 TB |\r\nHeight - 0.787 inch |\r\nWidth - 4.0 inch |\r\nDepth - 5.787 inch |\r\nWeight - 400 g |\r\nDrive Interface - SATA |\r\nSpindle Speed  - 7200 rpm |\r\nWarranty - 2 years', 'HDD11.jpg'),
(26, 'Western Digital WD10EZEX HDD', 'HDD', '3000.00', 'Drive Type - Internal |\r\nCapacity - 1 TB |\r\nCache Size  - 64 MB |\r\nDisk Speed  - 7200 rpm | \r\nDrive Interface  - SATA |\r\nHard Disk Form Factor - 3.5 inch |\r\nHeight - 4.72 inch |\r\nWidth - ?3.94 inch |\r\nWeight - 440 g | \r\nWarranty - 2 years ', 'HDD21.jpg'),
(27, 'Seagate Expansion STKM1000400 HDD', 'HDD', '3900.00', 'Drive Type - External |\r\nCapacity - 1 TB |\r\nConnectivity Technology	- USB |\r\nHard Disk Interface - USB 2.0/3.0 |\r\nHard Disk Form Factor - 2.5 inch |\r\nWidth - 8 cm |\r\nDepth - 11.53 cm |\r\nHeight - 1.26 cm |\r\nWeight - 159 g |\r\nBundled with - Seagate Rescue Data Recovery |\r\nCables Included -1 x USB 3.0 cable - external - 45.72 cm |\r\nWarranty - 3 years\r\n', 'HDD31.jpg'),
(28, 'Western Digital WDBYVG0010BBK HDD', 'HDD', '4100.00', 'Drive Type - External |\r\nCapacity - 1 TB |\r\nConnectivity Technology - USB |\r\nHard Disk Interface - USB 3.0 |\r\nHard Disk Form Factor - 2.5 inch |\r\nSpecial Feature - Password Protection |\r\nWidth - 4.8 cm |\r\nHeight - 17 cm |\r\nLength - 14 cm |\r\nWeight - 170 g |\r\nColors Available - Black, Sky, Red, White |\r\nWarranty - 3 years', 'HDD41.jpg'),
(29, 'ASUS GeForce GT 710 Graphic Card', 'Graphic Card', '6600.00', 'Dimensions - ?22.86 x 16.51 x 5.08 cm |\r\nWeight - 181 g |\r\nHardware Interface - ?PCI Express x8 |\r\nRam Size - 2 GB |\r\nRAM Type - GDDR5 |\r\nInterface - ?PCI-Express x16 |\r\nVideo Output Interface - HDMI |\r\nForm Factor - SFF |\r\nGPU Clock Speed - 954 MHz |\r\nWarranty - 3 years', 'Graphic_Card1.jpg'),
(30, 'Gigabyte GeForce GV-N710D3-2GL Graphic Card', 'Graphic Card', '4455.00', 'GPU Clock - 954 MHz |\r\nProcessors and Cores - 1 CUDA Cores |\r\nBus Standard - PCI |\r\nMemory - 64-bit, 2 GB DDR3 Memory |\r\n3D Support - Yes |\r\nDVI and HDMI Interface - 1 x DVI Output Out, Yes x Dual Link DVI Out, 1 x HDMI Output Out |\r\nVideo Output Interface	VGA, DVI, HDMI\r\nOther Interface - Yes x Co-Axial TV Out, 3 x Display Port Out |\r\nHD Content Support - HDTV Support |\r\nGraphics Card Interface - PCI Express |\r\nDimensions - 22.86 x 15.24 x 5.08 cm |\r\nWeight - 200 g |\r\nWarranty - 3 years\r\n', 'Graphic_Card2.jpg'),
(31, 'Noctua NF-A4X10 FLX CPU Fan', 'CPU Fan', '1215.00', 'Dimensions (L x W x H) - ?40 x 10 x 40 mm |\r\nWeight - 159 g |\r\nPower Connector Type - 3-Pin |\r\nVoltage - 12 Volts |\r\nCompatible Devices - Printer |\r\nNoise Level - 17.9 dB |\r\nWarranty - 6 years', 'CPU_Fan1.jpg'),
(32, 'Arctic P12 CPU Fan', 'CPU Fan', '515.00', 'Length -120 mm |\r\nWidth - 120 mm |\r\nHeight - 25 mm |\r\nWeight - 139 g |\r\nCable Length - 400 mm |\r\nTypical Voltage - 12 V DC |\r\nFan Frame - Standard |\r\nControl Type - Fixed Speed |\r\nConnector - 3-Pin-Connector |\r\nFan Bearing - Fluid Dynamic Bearing |\r\nFan Speed - 1800 rpm |\r\nWarranty - 6 years', 'CPU_Fan2.jpg'),
(33, 'Creative Pebble 2.0 Speakers', 'Speakers', '2100.00', 'Width - 12.95 cm |\r\nHeight - 24.64 cm |\r\nDepth - 13.21 cm |\r\nWeight - 645 g |\r\nPower Source - USB Chargeable |\r\nPower Output (RMS) - 4.4 W |\r\nFrequency Response - 100 - 17000 Hz |\r\nImpedance - 4 |\r\nColors Available - Black, White |\r\nWarranty - 1 year', 'Speakers11.jpg'),
(34, 'Zebronics Zeb-Warrior 2.0 Speakers', 'Speakers', '650.00', 'Output power -10W RMS (5W x 2) |\nDriver size -63.5mm (2.5\") x 2 |\nImpedance -3 ohm |\nFrequency response -120Hz - 15kHz |\nS/N ratio - 60 dB |\nSeparation - 50dB |\nLine input - 3.5mm jack |\nDimension (W X D X H) - 76 x 107 x 152 mm |\nWeight - 650 g |\nFeatures - USB powered, Volume control, Breathing RGB LED lights |\nWarranty - 1 year', 'Speakers21.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `ph_id` int(10) NOT NULL,
  `oh` int(10) NOT NULL,
  `p_name` varchar(100) NOT NULL,
  `p_price` decimal(10,2) NOT NULL,
  `p_qty` int(10) NOT NULL,
  `u_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`ph_id`, `oh`, `p_name`, `p_price`, `p_qty`, `u_id`, `date`) VALUES
(1, 1, 'Seagate Barracuda ST1000DM010 HDD', '3200.00', 1, 2, '2022-09-02 15:57:21'),
(2, 1, 'Western Digital WDBYVG0010BBK HDD', '4100.00', 1, 2, '2022-09-02 15:57:21'),
(3, 2, 'Logitech  M221 Mouse', '695.00', 2, 3, '2022-09-02 16:01:51'),
(4, 3, 'Creative Pebble 2.0 Speakers', '2100.00', 1, 4, '2022-09-02 16:04:03'),
(5, 4, 'Thermaltake V200CA-1K8-00M1WN-01 CPU Cabinet Case', '4549.00', 1, 5, '2022-09-02 16:06:43'),
(6, 4, 'GIGABYTE H510M H Motherboard', '6290.00', 1, 5, '2022-09-02 16:06:43'),
(7, 5, 'Noctua NF-A4X10 FLX CPU Fan', '1215.00', 1, 6, '2022-09-02 16:08:46'),
(8, 5, 'Kingston HyperX Fury RAM', '8450.00', 1, 6, '2022-09-02 16:08:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`po_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`ph_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `ph_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
