# For reading/writing files on the SD card

import struct
from pycubed import cubesat
import os, storage
import shutil


def WriteString(file, contents, overwrite = True):
	### Writes to a given file.
	### Returns True if successful
	
	# Check if the file exists
	if os.path.exists(file) and not overwrite:
		return False
	
	# Try writing to the file
	with open(file, 'w') as f:
		f.write(contents)
		return True
	
	return False

def ReadString(file):
	with open(file, 'r') as f:
		return f.read()
	
def DeleteFile(file):
	os.remove(file)
	
def DeleteDirectory(dir):
	shutil.rm(dir)
	
def Exists(file):
	return os.path.exists(file)

def CopyFile(src, dest):
	shutil.copy(src, dest)

def CopyDirectory(src, dest):
	shutil.copytree(src, dest)

def GetDiskUsage(path):
	return shutil.disk_usage(path)

def GetFileChecksum(path):
	# TODO
	return 0


def PrintDirectory(path, tabs=0):
	for file in os.listdir(path):
		stats = os.stat(path + "/" + file)
		filesize = stats[6]
		isdir = stats[0] & 0x4000

		if filesize < 1000:
			sizestr = str(filesize) + " by"
		elif filesize < 1000000:
			sizestr = "%0.1f KB" % (filesize / 1000)
		else:
			sizestr = "%0.1f MB" % (filesize / 1000000)

		prettyprintname = ""
		for _ in range(tabs):
			prettyprintname += "   "
		prettyprintname += file
		if isdir:
			prettyprintname += "/"
		print('{0:<40} Size: {1:>10}'.format(prettyprintname, sizestr))

		# recursively print directory contents
		if isdir:
			PrintDirectory(path + "/" + file, tabs + 1)
