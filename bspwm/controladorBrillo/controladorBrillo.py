#!/usr/bin/env python3
import serial
import os, time, sys

port = sys.argv[1].strip()
print("Listening on *", port)
arduino = serial.Serial(port=port, baudrate=9600, timeout=1)

while True:
    try:
        cur = (int(arduino.readline().decode("utf-8").strip()) * 100) / 255
        print("Brightness: " + str(cur) + "%")
        os.system("brightnessctl set " + str(15 + cur) + "%")

        if (cur >= 30):
            print("\t- clear")
            os.system("xwallpaper --zoom $HOME/Pictures/Wallpapers/elephant.png")
        else:
            print("\t- dark")
            os.system("xwallpaper --zoom $HOME/Pictures/Wallpapers/elephant-dark.png")
    except:
        pass

    time.sleep(3)
