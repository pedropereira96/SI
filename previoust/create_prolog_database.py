import xlrd


f= open("database.pl","w+")


workbook = xlrd.open_workbook('main_dataset.xls')

#Get the first sheet in the workbook by index
sheet1 = workbook.sheet_by_index(0)
f.write("\n\n% Flights\n")
#Get each row in the sheet as a list and print the list
for rowNumber in range(sheet1.nrows):
    if rowNumber != 0:
        f.write('flight("'+sheet1.row_values(rowNumber)[0] + '", "' +sheet1.row_values(rowNumber)[1] + '", "' +sheet1.row_values(rowNumber)[2] + '", "' + sheet1.row_values(rowNumber)[3] + '", ' + str('%.2f' % sheet1.row_values(rowNumber)[4]) + ').\n')
print("\n\n\n")

#Get the first sheet in the workbook by index
sheet2 = workbook.sheet_by_index(1)
f.write("\n\n% Seasons\n")

#Get each row in the sheet as a list and print the list
for rowNumber in range(sheet2.nrows):
    if rowNumber != 0:
        f.write('season("'+sheet2.row_values(rowNumber)[0] + '", "' +sheet2.row_values(rowNumber)[1] + '", "' +str(sheet2.row_values(rowNumber)[2])  + '", "' +str(sheet2.row_values(rowNumber)[3]) + '").\n')
print("\n\n\n")


#Get the first sheet in the workbook by index
sheet3 = workbook.sheet_by_index(2)
f.write("\n\n% Accomodations\n")
#Get each row in the sheet as a list and print the list
for rowNumber in range(sheet3.nrows):
    if rowNumber != 0:
        f.write('accomodation("'+sheet3.row_values(rowNumber)[0] + '", "' +sheet3.row_values(rowNumber)[1] + '", "' +sheet3.row_values(rowNumber)[2] + '", ' +str( '%.2f' % sheet3.row_values(rowNumber)[3]) + ').\n')
print("\n\n\n")


#Get the first sheet in the workbook by index
sheet4 = workbook.sheet_by_index(3)
f.write("\n\n% Attractions\n")
#Get each row in the sheet as a list and print the list
for rowNumber in range(sheet4.nrows):
    if rowNumber != 0:
        f.write('attraction("'+sheet4.row_values(rowNumber)[0] + '", "' +sheet4.row_values(rowNumber)[1] + '", "' +sheet4.row_values(rowNumber)[2] + '", "' +str(sheet4.row_values(rowNumber)[3]) + '", ' +str(sheet4.row_values(rowNumber)[4])  + ').\n')
print("\n\n\n")

f.close()