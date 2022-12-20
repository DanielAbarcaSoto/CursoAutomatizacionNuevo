import openpyxl

wk = openpyxl.Workbook()
sh = wk.active
sh.title = "HelloWorld"
print(sh.title)

sh['A4'].value = "HOLA MUNDO"

# CREAR NUEVA HOJA
wk.create_sheet(title="TESTING")
sh1 = wk['TESTING']
sh1['A3'] = "PROBANDO PYTHON"

# REMOVER HOJA
wk.remove(wk['TESTING'])

wk.save("D:\\PRUEBA2.xlsx")