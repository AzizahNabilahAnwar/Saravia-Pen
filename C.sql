--CUSTOMER
INSERT INTO Customer VALUES('CTR111', 'Anindita Berliani', 'Female', 'June 02,2002', '085723876641', 'Jl.Graha Bintaro No.11')
INSERT INTO Customer VALUES('CTR112', 'Sakira Eka Damayanti', 'Female', 'September 25,2002', '085716111902', 'Jl.Mutiara Amanda No.121')
INSERT INTO Customer VALUES('CTR113', 'Regita Efendi', 'Female', 'July 14,2001', '085823456288', 'Jl.Kemayoran Barat No.161')
INSERT INTO Customer VALUES('CTR114', 'Umar', 'Male', 'November 23,1995', '085817230484','Jl.Graha Bintaro No.11')
INSERT INTO Customer VALUES('CTR115', 'Dodi Surya', 'Male', 'January 29,2003', '085712345678', 'Jl.Kemanggisan No.111')
INSERT INTO Customer VALUES('CTR116', 'Melanie Nurlies', 'Female', 'January 12,2001', '085754549066', 'Jl.Wahidin No.05')
INSERT INTO Customer VALUES('CTR117', 'Azra Batrisya', 'Female', 'February 22,2002', '085723896701', 'Jl.Kiwi No.64')
INSERT INTO Customer VALUES('CTR118', 'Aliya Amira', 'Female', 'March 31,1994', '085711232673', 'Jl.Goa Pindul No.83')
INSERT INTO Customer VALUES('CTR121', 'Ermyka Elma', 'Female', 'April 15,2000', '085856352781', 'Jl.Kepu Timur No.77')
INSERT INTO Customer VALUES('CTR122', 'Deswita', 'Female', 'June 18,1999', '085809127653', 'Jl.Sumur batu No.67')

--STAFF
INSERT INTO Staff VALUES('STF221', 'Linda', 'Female', 'August 24,1994', '085777728412', 'Jl.Graha Bintaro No.11', '2000000')
INSERT INTO Staff VALUES('STF222', 'Desi', 'Female', 'January 04,1999', '085782731936', 'Jl.Gelora No.72', '2000000')
INSERT INTO Staff VALUES('STF223', 'Rahma Lestari', 'Female', 'July 17,1998', '085741524381', 'Jl.Kemayoran Utara No.51', '2000000')
INSERT INTO Staff VALUES('STF224', 'Keisya Amanda', 'Female', 'April 22,1999', '085808402426', 'Jl.Kepu Tengah No.45', '2000000')
INSERT INTO Staff VALUES('STF225', 'Sally Monopo', 'Female', 'January 07,1997', '085844824174', 'Jl.Siput No.62', '2000000')
INSERT INTO Staff VALUES('STF226', 'Hafizh', 'Male', 'December 04,2001', '085786842712', 'Jl.Singkong No.73', '3000000')
INSERT INTO Staff VALUES('STF227', 'Fachrul Saputra', 'Male', 'November 16,2000', '085704397147', 'Jl.Jeruk Purut No.71', '3000000')
INSERT INTO Staff VALUES('STF228', 'Ridho', 'Male', 'August 18,1995', '085852394510', 'Jl.Mangga Besar No.15', '3000000')
INSERT INTO Staff VALUES('STF231', 'Mahib', 'Male', 'June 26,2001', '085825941418', 'Jl.Kebayoran Baru No.61', '3000000')
INSERT INTO Staff VALUES('STF232', 'Muhammad Tegar', 'Male', 'July 17,2001', '085864723292', 'Jl.Whiskas No.68', '3000000')

--SALES TRANSACTION
INSERT INTO SalesTransaction VALUES('SLT331', 'CTR112', 'STF222','February 22,2020', 'Cash')
INSERT INTO SalesTransaction VALUES('SLT332', 'CTR114', 'STF225','January 21,2020', 'Cash')
INSERT INTO SalesTransaction VALUES('SLT333', 'CTR111', 'STF223','February 12,2020', 'Debit')
INSERT INTO SalesTransaction VALUES('SLT334', 'CTR113', 'STF221','December 23,2020', 'Cash')
INSERT INTO SalesTransaction VALUES('SLT335', 'CTR117', 'STF227','January 14,2020', 'Debit')
INSERT INTO SalesTransaction VALUES('SLT336', 'CTR118', 'STF224','March 01,2020', 'Debit')
INSERT INTO SalesTransaction VALUES('SLT337', 'CTR115', 'STF228','June 01,2020', 'Debit')
INSERT INTO SalesTransaction VALUES('SLT338', 'CTR116', 'STF227','February 03,2020', 'Debit')
INSERT INTO SalesTransaction VALUES('SLT341', 'CTR121', 'STF226','February 06,2020', 'Cash')
INSERT INTO SalesTransaction VALUES('SLT342', 'CTR122', 'STF228','January 24,2020', 'Cash')
INSERT INTO SalesTransaction VALUES('SLT343', 'CTR121', 'STF227','May 30,2020', 'Cash')
INSERT INTO SalesTransaction VALUES('SLT344', 'CTR113', 'STF231','May 04,2020', 'Debit')
INSERT INTO SalesTransaction VALUES('SLT345', 'CTR113', 'STF232','April 07,2020', 'Cash')
INSERT INTO SalesTransaction VALUES('SLT346', 'CTR114', 'STF223','March 15,2020', 'Debit')
INSERT INTO SalesTransaction VALUES('SLT347', 'CTR122', 'STF224','February 11,2020', 'Cash')

--PEN
INSERT INTO Pen VALUES('PEN441', 'Luxury Pen', '45000', '150')
INSERT INTO Pen VALUES('PEN442', 'Penny Pen', '20000', '110')
INSERT INTO Pen VALUES('PEN443', 'Rose Pen', '15000', '112')
INSERT INTO Pen VALUES('PEN444', 'Smart Pen', '49000', '130')
INSERT INTO Pen VALUES('PEN445', 'Rainbow Pen', '45000', '130')
INSERT INTO Pen VALUES('PEN446', 'Draw Pen', '45000', '120')
INSERT INTO Pen VALUES('PEN447', 'Cute Pen', '30000', '110')
INSERT INTO Pen VALUES('PEN448', 'Light Pen', '45000', '120')
INSERT INTO Pen VALUES('PEN451', 'Love Pen', '15000', '110')
INSERT INTO Pen VALUES('PEN452', 'Gold Pen', '49000', '140')

--SALES TRANSACTION DETAILS
INSERT INTO SalesTransaction_Details VALUES('PEN447', 'SLT331','3')
INSERT INTO SalesTransaction_Details VALUES('PEN442', 'SLT332','10')
INSERT INTO SalesTransaction_Details VALUES('PEN444', 'SLT333','2')
INSERT INTO SalesTransaction_Details VALUES('PEN443', 'SLT337','14')
INSERT INTO SalesTransaction_Details VALUES('PEN441', 'SLT338','50')
INSERT INTO SalesTransaction_Details VALUES('PEN446', 'SLT335','6')
INSERT INTO SalesTransaction_Details VALUES('PEN448', 'SLT334','3')
INSERT INTO SalesTransaction_Details VALUES('PEN445', 'SLT336','8')
INSERT INTO SalesTransaction_Details VALUES('PEN443', 'SLT344','11')
INSERT INTO SalesTransaction_Details VALUES('PEN442', 'SLT346','10')
INSERT INTO SalesTransaction_Details VALUES('PEN448', 'SLT341','10')
INSERT INTO SalesTransaction_Details VALUES('PEN444', 'SLT342','4')
INSERT INTO SalesTransaction_Details VALUES('PEN441', 'SLT343','60')
INSERT INTO SalesTransaction_Details VALUES('PEN445', 'SLT347','34')
INSERT INTO SalesTransaction_Details VALUES('PEN446', 'SLT344','26')
INSERT INTO SalesTransaction_Details VALUES('PEN447', 'SLT345','4')
INSERT INTO SalesTransaction_Details VALUES('PEN441', 'SLT333','2')
INSERT INTO SalesTransaction_Details VALUES('PEN442', 'SLT335','5')
INSERT INTO SalesTransaction_Details VALUES('PEN443', 'SLT347','36')
INSERT INTO SalesTransaction_Details VALUES('PEN446', 'SLT341','15')
INSERT INTO SalesTransaction_Details VALUES('PEN448', 'SLT332','25')
INSERT INTO SalesTransaction_Details VALUES('PEN444', 'SLT334','35')
INSERT INTO SalesTransaction_Details VALUES('PEN445', 'SLT346','15')
INSERT INTO SalesTransaction_Details VALUES('PEN447', 'SLT346','8')
INSERT INTO SalesTransaction_Details VALUES('PEN442', 'SLT338','3')

--PEN MATERIAL
INSERT INTO PenMaterial VALUES('PML551', 'Silver', '20000', '150')
INSERT INTO PenMaterial VALUES('PML552', 'Plastic', '3000', '150')
INSERT INTO PenMaterial VALUES('PML553', 'Spring', '10000', '130')
INSERT INTO PenMaterial VALUES('PML554', 'Alloy', '10000', '140')
INSERT INTO PenMaterial VALUES('PML555', 'Platinum', '20000', '110')
INSERT INTO PenMaterial VALUES('PML556', 'Gold', '60000', '120')
INSERT INTO PenMaterial VALUES('PML557', 'Balls', '5000', '130')
INSERT INTO PenMaterial VALUES('PML558', 'Bronze', '10000', '100')
INSERT INTO PenMaterial VALUES('PML561', 'Resin', '10000', '100')
INSERT INTO PenMaterial VALUES('PML562', 'Papyrus', '10000', '100')

--PEN MATERIAL DETAILS
INSERT INTO PenMaterial_Details VALUES('PEN444', 'PML553')
INSERT INTO PenMaterial_Details VALUES('PEN442', 'PML552')
INSERT INTO PenMaterial_Details VALUES('PEN447', 'PML551')
INSERT INTO PenMaterial_Details VALUES('PEN441', 'PML555')
INSERT INTO PenMaterial_Details VALUES('PEN443', 'PML557')
INSERT INTO PenMaterial_Details VALUES('PEN446', 'PML558')
INSERT INTO PenMaterial_Details VALUES('PEN448', 'PML556')
INSERT INTO PenMaterial_Details VALUES('PEN452', 'PML554')
INSERT INTO PenMaterial_Details VALUES('PEN446', 'PML553')
INSERT INTO PenMaterial_Details VALUES('PEN445', 'PML554')
INSERT INTO PenMaterial_Details VALUES('PEN445', 'PML558')
INSERT INTO PenMaterial_Details VALUES('PEN451', 'PML562')
INSERT INTO PenMaterial_Details VALUES('PEN452', 'PML561')
INSERT INTO PenMaterial_Details VALUES('PEN447', 'PML556')
INSERT INTO PenMaterial_Details VALUES('PEN448', 'PML555')
INSERT INTO PenMaterial_Details VALUES('PEN442', 'PML551')
INSERT INTO PenMaterial_Details VALUES('PEN441', 'PML552')
INSERT INTO PenMaterial_Details VALUES('PEN443', 'PML553')
INSERT INTO PenMaterial_Details VALUES('PEN444', 'PML554')
INSERT INTO PenMaterial_Details VALUES('PEN445', 'PML555')
INSERT INTO PenMaterial_Details VALUES('PEN446', 'PML556')
INSERT INTO PenMaterial_Details VALUES('PEN447', 'PML557')
INSERT INTO PenMaterial_Details VALUES('PEN448', 'PML551')
INSERT INTO PenMaterial_Details VALUES('PEN443', 'PML562')
INSERT INTO PenMaterial_Details VALUES('PEN444', 'PML561')

--VENDOR
INSERT INTO Vendor VALUES('VDR661', 'Lous', 'Jl.Regency Raya No.32','085726311748', 'lous@gmail.com')
INSERT INTO Vendor VALUES('VDR662', 'Tinny', 'Jl.Ciledug No.12','085719681256', 'tinnyshop@gmail.com')
INSERT INTO Vendor VALUES('VDR663', 'Metroid', 'Jl.Pancasila No.23','0215673745 ', 'metroidvan@gmail.com')
INSERT INTO Vendor VALUES('VDR664', 'Zelda', 'Jl.Antasari No.32','08614536263', 'legendazelda@gmail.com')
INSERT INTO Vendor VALUES('VDR665', 'Mario', 'Jl.Peterpan No.12','0217699790', 'mariobros@gmail.com')
INSERT INTO Vendor VALUES('VDR666', 'Peach', 'Jl.Ultraman No.11','0214529068', 'princesspeach@gmail.com')
INSERT INTO Vendor VALUES('VDR667', 'Link', 'Jl.Operandis No.12','0318432729', 'ganonlink@gmail.com')
INSERT INTO Vendor VALUES('VDR668', 'Daisy', 'Jl.Midoriya No.09','0243542846', 'browndaisy@gmail.com')
INSERT INTO Vendor VALUES('VDR671', 'Luigi', 'Jl.Yeager No.24','0616614081', 'greenluigi@gmail.com')
INSERT INTO Vendor VALUES('VDR672', 'Yoshi', 'Jl.Shuumatsu No.69','0218501901', 'yoshisisland@gmail.com')

--PURCHASE TRANSACTION
INSERT INTO PurchaseTransaction VALUES('PCT771', 'STF221','VDR661', 'August 25,2019', 'Debit')
INSERT INTO PurchaseTransaction VALUES('PCT772', 'STF221','VDR661', 'March 12,2019', 'Debit')
INSERT INTO PurchaseTransaction VALUES('PCT773', 'STF221','VDR661', 'January 08,2019', 'Debit')
INSERT INTO PurchaseTransaction VALUES('PCT774', 'STF222','VDR662', 'August 01,2019', 'Debit')
INSERT INTO PurchaseTransaction VALUES('PCT775', 'STF223','VDR663', 'August 19,2019', 'Debit')
INSERT INTO PurchaseTransaction VALUES('PCT776', 'STF223','VDR664', 'September 15,2019', 'Debit')
INSERT INTO PurchaseTransaction VALUES('PCT777', 'STF224','VDR664', 'June 23,2019', 'Debit')
INSERT INTO PurchaseTransaction VALUES('PCT778', 'STF224','VDR664', 'July 22,2019', 'Debit')
INSERT INTO PurchaseTransaction VALUES('PCT781', 'STF225','VDR665', 'May 13,2019', 'Debit')
INSERT INTO PurchaseTransaction VALUES('PCT782', 'STF226','VDR665', 'August 02,2019', 'Debit')
INSERT INTO PurchaseTransaction VALUES('PCT783', 'STF227','VDR666', 'August 03,2019', 'Debit')
INSERT INTO PurchaseTransaction VALUES('PCT784', 'STF231','VDR666', 'June 23,2019', 'Debit')
INSERT INTO PurchaseTransaction VALUES('PCT785', 'STF231','VDR666', 'June 25,2019', 'Debit')
INSERT INTO PurchaseTransaction VALUES('PCT786', 'STF232','VDR671', 'July 21,2019', 'Debit')
INSERT INTO PurchaseTransaction VALUES('PCT787', 'STF231','VDR672', 'August 30,2019', 'Debit')

--PURCHASE TRANSACTION DETAILS
INSERT INTO PurchaseTransaction_Details VALUES('PML551', 'PCT771', '12')
INSERT INTO PurchaseTransaction_Details VALUES('PML552', 'PCT772', '10')
INSERT INTO PurchaseTransaction_Details VALUES('PML552', 'PCT773', '11')
INSERT INTO PurchaseTransaction_Details VALUES('PML553', 'PCT773', '13')
INSERT INTO PurchaseTransaction_Details VALUES('PML553', 'PCT774', '52')
INSERT INTO PurchaseTransaction_Details VALUES('PML553', 'PCT771', '12')
INSERT INTO PurchaseTransaction_Details VALUES('PML554', 'PCT774', '13')
INSERT INTO PurchaseTransaction_Details VALUES('PML556', 'PCT774', '32')
INSERT INTO PurchaseTransaction_Details VALUES('PML561', 'PCT775', '12')
INSERT INTO PurchaseTransaction_Details VALUES('PML562', 'PCT775', '11')
INSERT INTO PurchaseTransaction_Details VALUES('PML555', 'PCT781', '2')
INSERT INTO PurchaseTransaction_Details VALUES('PML555', 'PCT783', '4')
INSERT INTO PurchaseTransaction_Details VALUES('PML556', 'PCT783', '5')
INSERT INTO PurchaseTransaction_Details VALUES('PML552', 'PCT783', '12')
INSERT INTO PurchaseTransaction_Details VALUES('PML556', 'PCT785', '43')
INSERT INTO PurchaseTransaction_Details VALUES('PML557', 'PCT785', '13')
INSERT INTO PurchaseTransaction_Details VALUES('PML557', 'PCT782', '43')
INSERT INTO PurchaseTransaction_Details VALUES('PML561', 'PCT782', '12')
INSERT INTO PurchaseTransaction_Details VALUES('PML561', 'PCT781', '32')
INSERT INTO PurchaseTransaction_Details VALUES('PML561', 'PCT772', '42')
INSERT INTO PurchaseTransaction_Details VALUES('PML551', 'PCT774', '35')
INSERT INTO PurchaseTransaction_Details VALUES('PML562', 'PCT771', '65')
INSERT INTO PurchaseTransaction_Details VALUES('PML553', 'PCT775', '3')
INSERT INTO PurchaseTransaction_Details VALUES('PML554', 'PCT776', '5')
INSERT INTO PurchaseTransaction_Details VALUES('PML555', 'PCT777', '6')