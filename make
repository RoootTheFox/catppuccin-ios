#!/bin/bash
# this is a wrapper for make, because for some reason i can't get normal make to run
# the codegen only once and not end up in a race condition
# IF YOU KNOW HOW TO FIX THIS PLEASE MAKE A PR

./custom_include.sh && RAN_CODEGEN=1 make $@