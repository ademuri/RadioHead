#!/bin/bash

# Builds all clients against all (ish) supported board architectures.

set -euo pipefail

DEFAULT_BOARDS="--board uno --board ATmega2560 --board leonardo --board yun --board due --board zero --board moteino --board moteino_zero --board moteinomega --board miniwireless --board esp12e --board whispernode --board chipkit_dp32 --board maple --board teensy31 --board adafruit_feather_m0 --board adafruit_feather_m4 --board wemos_d1_mini32"

platformio ci --lib=. ${DEFAULT_BOARDS?} examples/cc110/cc110_client
platformio ci --lib=. ${DEFAULT_BOARDS?} examples/mrf89/mrf89_client
platformio ci --lib=. ${DEFAULT_BOARDS?} examples/nrf24/nrf24_client
platformio ci --lib=. ${DEFAULT_BOARDS?} examples/nrf905/nrf905_client
platformio ci --lib=. ${DEFAULT_BOARDS?} examples/rf22/rf22_client
platformio ci --lib=. ${DEFAULT_BOARDS?} examples/rf24/rf24_client
platformio ci --lib=. ${DEFAULT_BOARDS?} examples/rf69/rf69_client
platformio ci --lib=. ${DEFAULT_BOARDS?} examples/rf95/rf95_client

ASK_BOARDS="--board uno --board ATmega2560 --board leonardo --board yun --board due --board zero --board moteino --board moteino_zero --board moteinomega --board miniwireless --board esp12e --board whispernode --board chipkit_dp32 --board maple --board teensy31 --board adafruit_feather_m0 --board wemos_d1_mini32"
platformio ci --lib=. ${ASK_BOARDS?} examples/ask/ask_receiver

E32_BOARDS="--board uno --board ATmega2560 --board leonardo --board yun --board moteino --board moteinomega --board miniwireless --board esp12e --board whispernode --board chipkit_dp32"
platformio ci --lib=. ${E32_BOARDS?} examples/e32/e32_client

platformio ci --lib=. --board nrf51_dk examples/nrf51/nrf51_client

SERIAL_BOARDS="--board uno --board ATmega2560 --board due --board zero --board moteino --board moteinomega --board miniwireless --board esp12e --board whispernode --board wemos_d1_mini32"
platformio ci --lib=. ${SERIAL_BOARDS?} examples/serial/serial_gateway

