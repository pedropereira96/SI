from itertools import count
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
import time
import random
from selenium.webdriver.common.by import By
from selenium.webdriver.firefox.service import Service

import xlwt
from xlwt import Workbook

countries=["Argentina","Australia","Brazil","Canada","China","Egypt","France","Germany","India","Italy","Japan","Mexico","Portugal","South Africa","Spain","United Kingdom","United States"]
seasons = ["Summer", "Winter", "Autumn", "Spring"]
classes = ["Economy", "Executive", "First Class"]

wb = Workbook()

#Flights
i=1
sheet1 = wb.add_sheet('Flights')
sheet1.write(0, 0, "From")
sheet1.write(0, 1, "To")
sheet1.write(0, 2, "Seasons")
sheet1.write(0, 3, "Class")
sheet1.write(0, 4, "Price")

for f in countries:
    for t in countries:
        for s in seasons:
            price = random.uniform(100,500)
            for c in classes:
                
                if f != t:
                    sheet1.write(i, 0, f)
                    sheet1.write(i, 1, t)
                    sheet1.write(i, 2, s)
                    sheet1.write(i, 3, c)
                    sheet1.write(i, 4, price)
                    i = i + 1
                price= price + random.uniform(50,500)

# Seasons
i=1
sheet2 = wb.add_sheet('Seasons')

sheet2.write(0, 0, "To")
sheet2.write(0, 1, "Season")
sheet2.write(0, 2, "date_start")
sheet2.write(0, 3, "date_end")
for f in countries:
    for s in seasons:
        sheet2.write(i, 0, f)
        sheet2.write(i, 1, s)
        i = i + 1

        
# Accomondations
accomodation_type = [ "Camping", "Hostel","House","Hotel" ]
i=1
sheet3 = wb.add_sheet('Accomondations')

sheet3.write(0, 0, "Where")
sheet3.write(0, 1, "Season")
sheet3.write(0, 2, "Type")
sheet3.write(0, 3, "Price")
for t in countries:
    for s in seasons:
        price = random.uniform(10,60)
        for c in accomodation_type:
            
            if f != t:
                sheet3.write(i, 0, t)
                sheet3.write(i, 1, s)
                sheet3.write(i, 2, c)
                sheet3.write(i, 3, price)
                i = i + 1
            price= price + random.uniform(50,200)


# Accomondations
i=1
sheet4 = wb.add_sheet('Attractions')

sheet4.write(0, 0, "Where")
sheet4.write(0, 1, "Season")
sheet4.write(0, 2, "Type")
sheet4.write(0, 3, "Price")


wb.save('new_dataset.xls')