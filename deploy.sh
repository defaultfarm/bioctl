#!/bin/bash

# rustup target add armv7-unknown-linux-gnueabihf

cargo build --target=armv7-unknown-linux-gnueabihf --release
scp target/armv7-unknown-linux-gnueabihf/release/bioctl resin:/tmp/
ssh resin /tmp/bioctl
