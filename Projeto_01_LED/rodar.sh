#!/bin/bash
arduino-cli compile --fqbn arduino:avr:uno Projeto_01_LED.ino
arduino-cli upload -p /dev/ttyUSB0 --fqbn arduino:avr:uno Projeto_01_LED.ino
