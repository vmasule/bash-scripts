#!/usr/bin/env bash
# Check shell is interactive, this is prefred method

case  "$-" in
     *i*) echo "This shell is interactive"
     ;;
     *) echo "This shell is NOT interactive"
     ;;
esac 
