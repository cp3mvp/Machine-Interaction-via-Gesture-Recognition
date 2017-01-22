clear all; clc; close all;
TrainingImages = zeros(100,3600);
TrainingLabels = zeros(100,1);

%correct
image = findGesture('0101.jpg','0101.jpg');
TrainingImages(1,1:3600) = reshape(image,1,3600);
TrainingLabels(1,1) = 01;

image = findGesture('0102.jpg','0102.jpg');
TrainingImages(2,1:3600) = reshape(image,1,3600);
TrainingLabels(2,1) = 01;

image = findGesture('0103.jpg','0103.jpg');
TrainingImages(3,1:3600) = reshape(image,1,3600);
TrainingLabels(3,1) = 01;

image = findGesture('0104.jpg','0104.jpg');
TrainingImages(4,1:3600) = reshape(image,1,3600);
TrainingLabels(4,1) = 01;

image = findGesture('0105.jpg','0105.jpg');
TrainingImages(5,1:3600) = reshape(image,1,3600);
TrainingLabels(5,1) = 01;

image = findGesture('0106.jpg','0106.jpg');
TrainingImages(6,1:3600) = reshape(image,1,3600);
TrainingLabels(6,1) = 01;

image = findGesture('0107.jpg','0107.jpg');
TrainingImages(7,1:3600) = reshape(image,1,3600);
TrainingLabels(7,1) = 01;

image = findGesture('0108.jpg','0108.jpg');
TrainingImages(8,1:3600) = reshape(image,1,3600);
TrainingLabels(8,1) = 01;

image = findGesture('0109.jpg','0109.jpg');
TrainingImages(9,1:3600) = reshape(image,1,3600);
TrainingLabels(9,1) = 01;

image = findGesture('0110.jpg','0110.jpg');
TrainingImages(10,1:3600) = reshape(image,1,3600);
TrainingLabels(10,1) = 01;

%fight
image = findGesture('0201.jpg','0201.jpg');
TrainingImages(11,1:3600) = reshape(image,1,3600);
TrainingLabels(11,1) = 02;

image = findGesture('0202.jpg','0202.jpg');
TrainingImages(12,1:3600) = reshape(image,1,3600);
TrainingLabels(12,1) = 02;

image = findGesture('0203.jpg','0203.jpg');
TrainingImages(13,1:3600) = reshape(image,1,3600);
TrainingLabels(13,1) = 02;

image = findGesture('0204.jpg','0204.jpg');
TrainingImages(14,1:3600) = reshape(image,1,3600);
TrainingLabels(14,1) = 02;

image = findGesture('0205.jpg','0205.jpg');
TrainingImages(15,1:3600) = reshape(image,1,3600);
TrainingLabels(15,1) = 02;

image = findGesture('0206.jpg','0206.jpg');
TrainingImages(16,1:3600) = reshape(image,1,3600);
TrainingLabels(16,1) = 02;

image = findGesture('0207.jpg','0207.jpg');
TrainingImages(17,1:3600) = reshape(image,1,3600);
TrainingLabels(17,1) = 02;

image = findGesture('0208.jpg','0208.jpg');
TrainingImages(18,1:3600) = reshape(image,1,3600);
TrainingLabels(18,1) = 02;

image = findGesture('0209.jpg','0209.jpg');
TrainingImages(19,1:3600) = reshape(image,1,3600);
TrainingLabels(19,1) = 02;

image = findGesture('0210.jpg','0210.jpg');
TrainingImages(20,1:3600) = reshape(image,1,3600);
TrainingLabels(20,1) = 02;

%good
image = findGesture('0301.jpg','0301.jpg');
TrainingImages(21,1:3600) = reshape(image,1,3600);
TrainingLabels(21,1) = 03;

image = findGesture('0302.jpg','0302.jpg');
TrainingImages(22,1:3600) = reshape(image,1,3600);
TrainingLabels(22,1) = 03;

image = findGesture('0303.jpg','0303.jpg');
TrainingImages(23,1:3600) = reshape(image,1,3600);
TrainingLabels(23,1) = 03;

image = findGesture('0304.jpg','0304.jpg');
TrainingImages(24,1:3600) = reshape(image,1,3600);
TrainingLabels(24,1) = 03;

image = findGesture('0305.jpg','0305.jpg');
TrainingImages(25,1:3600) = reshape(image,1,3600);
TrainingLabels(25,1) = 03;

image = findGesture('0306.jpg','0306.jpg');
TrainingImages(26,1:3600) = reshape(image,1,3600);
TrainingLabels(26,1) = 03;

image = findGesture('0307.jpg','0307.jpg');
TrainingImages(27,1:3600) = reshape(image,1,3600);
TrainingLabels(27,1) = 03;

image = findGesture('0308.jpg','0308.jpg');
TrainingImages(28,1:3600) = reshape(image,1,3600);
TrainingLabels(28,1) = 03;

image = findGesture('0309.jpg','0309.jpg');
TrainingImages(29,1:3600) = reshape(image,1,3600);
TrainingLabels(29,1) = 03;

image = findGesture('0310.jpg','0310.jpg');
TrainingImages(30,1:3600) = reshape(image,1,3600);
TrainingLabels(30,1) = 03;

%love
image = findGesture('0401.jpg','0401.jpg');
TrainingImages(31,1:3600) = reshape(image,1,3600);
TrainingLabels(31,1) = 04;

image = findGesture('0402.jpg','0402.jpg');
TrainingImages(32,1:3600) = reshape(image,1,3600);
TrainingLabels(32,1) = 04;

image = findGesture('0403.jpg','0403.jpg');
TrainingImages(33,1:3600) = reshape(image,1,3600);
TrainingLabels(33,1) = 04;

image = findGesture('0404.jpg','0404.jpg');
TrainingImages(34,1:3600) = reshape(image,1,3600);
TrainingLabels(34,1) = 04;

image = findGesture('0405.jpg','0405.jpg');
TrainingImages(35,1:3600) = reshape(image,1,3600);
TrainingLabels(35,1) = 04;

image = findGesture('0406.jpg','0406.jpg');
TrainingImages(36,1:3600) = reshape(image,1,3600);
TrainingLabels(36,1) = 04;

image = findGesture('0407.jpg','0407.jpg');
TrainingImages(37,1:3600) = reshape(image,1,3600);
TrainingLabels(37,1) = 04;

image = findGesture('0408.jpg','0408.jpg');
TrainingImages(38,1:3600) = reshape(image,1,3600);
TrainingLabels(38,1) = 04;

image = findGesture('0409.jpg','0409.jpg');
TrainingImages(39,1:3600) = reshape(image,1,3600);
TrainingLabels(39,1) = 04;

image = findGesture('0410.jpg','0410.jpg');
TrainingImages(40,1:3600) = reshape(image,1,3600);
TrainingLabels(40,1) = 04;

%money
image = findGesture('0501.jpg','0501.jpg');
TrainingImages(41,1:3600) = reshape(image,1,3600);
TrainingLabels(41,1) = 05;

image = findGesture('0502.jpg','0502.jpg');
TrainingImages(42,1:3600) = reshape(image,1,3600);
TrainingLabels(42,1) = 05;

image = findGesture('0503.jpg','0503.jpg');
TrainingImages(43,1:3600) = reshape(image,1,3600);
TrainingLabels(43,1) = 05;

image = findGesture('0504.jpg','0504.jpg');
TrainingImages(44,1:3600) = reshape(image,1,3600);
TrainingLabels(44,1) = 05;

image = findGesture('0505.jpg','0505.jpg');
TrainingImages(45,1:3600) = reshape(image,1,3600);
TrainingLabels(45,1) = 05;

image = findGesture('0506.jpg','0506.jpg');
TrainingImages(46,1:3600) = reshape(image,1,3600);
TrainingLabels(46,1) = 05;

image = findGesture('0507.jpg','0507.jpg');
TrainingImages(47,1:3600) = reshape(image,1,3600);
TrainingLabels(47,1) = 05;

image = findGesture('0508.jpg','0508.jpg');
TrainingImages(48,1:3600) = reshape(image,1,3600);
TrainingLabels(48,1) = 05;

image = findGesture('0509.jpg','0509.jpg');
TrainingImages(49,1:3600) = reshape(image,1,3600);
TrainingLabels(49,1) = 05;

image = findGesture('0510.jpg','0510.jpg');
TrainingImages(50,1:3600) = reshape(image,1,3600);
TrainingLabels(50,1) = 05;

%no
image = findGesture('0601.jpg','0601.jpg');
TrainingImages(51,1:3600) = reshape(image,1,3600);
TrainingLabels(51,1) = 06;

image = findGesture('0602.jpg','0602.jpg');
TrainingImages(52,1:3600) = reshape(image,1,3600);
TrainingLabels(52,1) = 06;

image = findGesture('0603.jpg','0603.jpg');
TrainingImages(53,1:3600) = reshape(image,1,3600);
TrainingLabels(53,1) = 06;

image = findGesture('0604.jpg','0604.jpg');
TrainingImages(54,1:3600) = reshape(image,1,3600);
TrainingLabels(54,1) = 06;

image = findGesture('0605.jpg','0605.jpg');
TrainingImages(55,1:3600) = reshape(image,1,3600);
TrainingLabels(55,1) = 06;

image = findGesture('0606.jpg','0606.jpg');
TrainingImages(56,1:3600) = reshape(image,1,3600);
TrainingLabels(56,1) = 06;

image = findGesture('0607.jpg','0607.jpg');
TrainingImages(57,1:3600) = reshape(image,1,3600);
TrainingLabels(57,1) = 06;

image = findGesture('0608.jpg','0608.jpg');
TrainingImages(58,1:3600) = reshape(image,1,3600);
TrainingLabels(58,1) = 06;

image = findGesture('0609.jpg','0609.jpg');
TrainingImages(59,1:3600) = reshape(image,1,3600);
TrainingLabels(59,1) = 06;

image = findGesture('0610.jpg','0610.jpg');
TrainingImages(60,1:3600) = reshape(image,1,3600);
TrainingLabels(60,1) = 06;

%stop
image = findGesture('0701.jpg','0701.jpg');
TrainingImages(61,1:3600) = reshape(image,1,3600);
TrainingLabels(61,1) = 07;

image = findGesture('0702.jpg','0702.jpg');
TrainingImages(62,1:3600) = reshape(image,1,3600);
TrainingLabels(62,1) = 07;

image = findGesture('0703.jpg','0703.jpg');
TrainingImages(63,1:3600) = reshape(image,1,3600);
TrainingLabels(63,1) = 07;

image = findGesture('0704.jpg','0704.jpg');
TrainingImages(64,1:3600) = reshape(image,1,3600);
TrainingLabels(64,1) = 07;

image = findGesture('0705.jpg','0705.jpg');
TrainingImages(65,1:3600) = reshape(image,1,3600);
TrainingLabels(65,1) = 07;

image = findGesture('0706.jpg','0706.jpg');
TrainingImages(66,1:3600) = reshape(image,1,3600);
TrainingLabels(66,1) = 07;

image = findGesture('0707.jpg','0707.jpg');
TrainingImages(67,1:3600) = reshape(image,1,3600);
TrainingLabels(67,1) = 07;

image = findGesture('0708.jpg','0708.jpg');
TrainingImages(68,1:3600) = reshape(image,1,3600);
TrainingLabels(68,1) = 07;

image = findGesture('0709.jpg','0709.jpg');
TrainingImages(69,1:3600) = reshape(image,1,3600);
TrainingLabels(69,1) = 07;

image = findGesture('0710.jpg','0710.jpg');
TrainingImages(70,1:3600) = reshape(image,1,3600);
TrainingLabels(70,1) = 07;

%victory
image = findGesture('0801.jpg','0801.jpg');
TrainingImages(71,1:3600) = reshape(image,1,3600);
TrainingLabels(71,1) = 08;

image = findGesture('0802.jpg','0802.jpg');
TrainingImages(72,1:3600) = reshape(image,1,3600);
TrainingLabels(72,1) = 08;

image = findGesture('0803.jpg','0803.jpg');
TrainingImages(73,1:3600) = reshape(image,1,3600);
TrainingLabels(73,1) = 08;

image = findGesture('0804.jpg','0804.jpg');
TrainingImages(74,1:3600) = reshape(image,1,3600);
TrainingLabels(74,1) = 08;

image = findGesture('0805.jpg','0805.jpg');
TrainingImages(75,1:3600) = reshape(image,1,3600);
TrainingLabels(75,1) = 08;

image = findGesture('0806.jpg','0806.jpg');
TrainingImages(76,1:3600) = reshape(image,1,3600);
TrainingLabels(76,1) = 08;

image = findGesture('0807.jpg','0807.jpg');
TrainingImages(77,1:3600) = reshape(image,1,3600);
TrainingLabels(77,1) = 08;

image = findGesture('0808.jpg','0808.jpg');
TrainingImages(78,1:3600) = reshape(image,1,3600);
TrainingLabels(78,1) = 08;

image = findGesture('0809.jpg','0809.jpg');
TrainingImages(79,1:3600) = reshape(image,1,3600);
TrainingLabels(79,1) = 08;

image = findGesture('0810.jpg','0810.jpg');
TrainingImages(80,1:3600) = reshape(image,1,3600);
TrainingLabels(80,1) = 08;

%wrong
image = findGesture('0901.jpg','0901.jpg');
TrainingImages(81,1:3600) = reshape(image,1,3600);
TrainingLabels(81,1) = 09;

image = findGesture('0902.jpg','0902.jpg');
TrainingImages(82,1:3600) = reshape(image,1,3600);
TrainingLabels(82,1) = 09;

image = findGesture('0903.jpg','0903.jpg');
TrainingImages(83,1:3600) = reshape(image,1,3600);
TrainingLabels(83,1) = 09;

image = findGesture('0904.jpg','0904.jpg');
TrainingImages(84,1:3600) = reshape(image,1,3600);
TrainingLabels(84,1) = 09;

image = findGesture('0905.jpg','0905.jpg');
TrainingImages(85,1:3600) = reshape(image,1,3600);
TrainingLabels(85,1) = 09;

image = findGesture('0906.jpg','0906.jpg');
TrainingImages(86,1:3600) = reshape(image,1,3600);
TrainingLabels(86,1) = 09;

image = findGesture('0907.jpg','0907.jpg');
TrainingImages(87,1:3600) = reshape(image,1,3600);
TrainingLabels(87,1) = 09;

image = findGesture('0908.jpg','0908.jpg');
TrainingImages(88,1:3600) = reshape(image,1,3600);
TrainingLabels(88,1) = 09;

image = findGesture('0909.jpg','0909.jpg');
TrainingImages(89,1:3600) = reshape(image,1,3600);
TrainingLabels(89,1) = 09;

image = findGesture('0910.jpg','0910.jpg');
TrainingImages(90,1:3600) = reshape(image,1,3600);
TrainingLabels(90,1) = 09;

%yes
image = findGesture('1001.jpg','1001.jpg');
TrainingImages(91,1:3600) = reshape(image,1,3600);
TrainingLabels(91,1) = 10;

image = findGesture('1002.jpg','1002.jpg');
TrainingImages(92,1:3600) = reshape(image,1,3600);
TrainingLabels(92,1) = 10;

image = findGesture('1003.jpg','1003.jpg');
TrainingImages(93,1:3600) = reshape(image,1,3600);
TrainingLabels(93,1) = 10;

image = findGesture('1004.jpg','1004.jpg');
TrainingImages(94,1:3600) = reshape(image,1,3600);
TrainingLabels(94,1) = 10;

image = findGesture('1005.jpg','1005.jpg');
TrainingImages(95,1:3600) = reshape(image,1,3600);
TrainingLabels(95,1) = 10;

image = findGesture('1006.jpg','1006.jpg');
TrainingImages(96,1:3600) = reshape(image,1,3600);
TrainingLabels(96,1) = 10;

image = findGesture('1007.jpg','1007.jpg');
TrainingImages(97,1:3600) = reshape(image,1,3600);
TrainingLabels(97,1) = 10;

image = findGesture('1008.jpg','1008.jpg');
TrainingImages(98,1:3600) = reshape(image,1,3600);
TrainingLabels(98,1) = 10;

image = findGesture('1009.jpg','1009.jpg');
TrainingImages(99,1:3600) = reshape(image,1,3600);
TrainingLabels(99,1) = 10;

image = findGesture('1010.jpg','1010.jpg');
TrainingImages(100,1:3600) = reshape(image,1,3600);
TrainingLabels(100,1) = 10;