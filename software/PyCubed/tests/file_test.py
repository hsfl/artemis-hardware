from pycubed import cubesat
from artemis import file


def PrintFiles():
	print('Attempting to print contents of the SD card')
	
	# Check if SD card was found
	if not cubesat.hardware['SDcard']:
		cubesat.RGB=(255,0,0)
		print('No SD Card Detected')
		return
	
	print('Files on system: ')
	file.PrintDirectory('/sd')
	
def TestWrite(path, contents = 'Hello there!'):
	print('Attempt to write file ' + path)
	
	status = file.WriteString(path, contents, False)
	
	if status:
		print('Successfully wrote to file')
	else:
		print('Could not write to file')
	
def TestRead(path):
	print('Attempting to read file ' + path)
	
	contents = file.ReadString(path)
	
	if contents:
		print('File contents:')
		print(contents)
	else:
		print('File could not be opened')


def TestDeleteFile(path):
	print('Attempting to delete the file ' + path)
	
	file.DeleteFile(path)
	
	if file.Exists(path):
		print('File was not deleted')
	else:
		print('File deleted')


def TestDeleteDirectory(path):
	print('Attempting to delete the directory ' + path)
	
	file.DeleteDirectory(path)
	
	if file.Exists(path):
		print('Directory was not deleted')
	else:
		print('Directory deleted')
	
def TestCopyFile(src, dest):
	print('Attempting to copy file ' + src + ' to destination ' + dest)
	
	file.CopyFile(src, dest)
	
	if file.Exists(dest):
		print('File copied')
	else:
		print('File not copied')
		
def TestCopyDirectory(src, dest):
	print('Attempting to copy directory ' + src + ' to destination ' + dest)
	
	file.CopyFile(src, dest)
	
	if file.Exists(dest):
		print('Directory copied')
	else:
		print('Directory not copied')
		
def PrintDiskUsage():
	print('Retrieving SD card memory usage')
	memory = file.GetDiskUsage("/sd")
	
	print('Total: ' + str(memory.total) + ' bytes')
	print('Used: ' + str(memory.used) + ' bytes')
	print('Free: ' + str(memory.free) + ' bytes')


