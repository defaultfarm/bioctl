#!/bin/bash

rustup target add armv7-unknown-linux-gnueabihf

cargo build --target=armv7-unknown-linux-gnueabihf --release

rsync -avz target/armv7-unknown-linux-gnueabihf/release/bioctl resin:/tmp/
ssh resin /tmp/bioctl
