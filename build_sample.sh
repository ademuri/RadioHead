#!/bin/bash

# Builds all clients against a single board type.

set -euo pipefail

DEFAULT_BOARD="--board uno"

# TODO: this fails to build
#platformio ci --lib=. --board grasshopper_l082cz examples/abz/abz_client

platformio ci --lib=. ${DEFAULT_BOARD?} examples/ask/ask_receiver
platformio ci --lib=. ${DEFAULT_BOARD?} examples/cc110/cc110_client
platformio ci --lib=. ${DEFAULT_BOARD?} examples/e32/e32_client
platformio ci --lib=. ${DEFAULT_BOARD?} examples/mrf89/mrf89_client
platformio ci --lib=. ${DEFAULT_BOARD?} examples/nrf24/nrf24_client
platformio ci --lib=. --board nrf51_dk examples/nrf51/nrf51_client
platformio ci --lib=. ${DEFAULT_BOARD?} examples/nrf905/nrf905_client
platformio ci --lib=. ${DEFAULT_BOARD?} examples/rf22/rf22_client
platformio ci --lib=. ${DEFAULT_BOARD?} examples/rf24/rf24_client
platformio ci --lib=. ${DEFAULT_BOARD?} examples/rf69/rf69_client
platformio ci --lib=. ${DEFAULT_BOARD?} examples/rf95/rf95_client
platformio ci --lib=. ${DEFAULT_BOARD?} examples/serial/serial_gateway
