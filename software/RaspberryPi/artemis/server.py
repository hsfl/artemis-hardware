import socket
import adafruit_rfm9x as rfm9x
import digitalio
import board
import busio
import time

RADIO_FREQ_MHZ = 915.0
CS = digitalio.DigitalInOut(board.CE1)
RESET = digitalio.DigitalInOut(board.D25)
SPI = busio.SPI(board.SCK, MOSI=board.MOSI, MISO=board.MISO)
radio = rfm9x.RFM9x(SPI, CS, RESET, RADIO_FREQ_MHZ)
prev_packet = None
localIP = '127.0.0.1'
localPort = 20001
bufferSize = 1024
msg = "test"

UDPServerSocket = socket.socket(family=socket.AF_INET, type=socket.SOCK_DGRAM)

UDPServerSocket.bind((localIP, localPort))

print("UDP server up and listening")

while(True):
    data = input()
    packet =data
    if(packet is not None):
      
        bytesToSend = str.encode(data)
        bytesAddressPair = UDPServerSocket.recvfrom(bufferSize)
        message = bytesAddressPair[0]
        address = bytesAddressPair[1]
        clientMsg = "message from client:{}".format(message)
        clientIP = "client IP Address:()".format(address)    
        print(clientMsg)
        print(clientIP)
        UDPServerSocket.sendto(bytesToSend, address)
    else:
        print("no data")
    time.sleep(5)


