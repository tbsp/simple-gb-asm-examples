#! /bin/bash
# Simple bash script to assemble Game Boy ROMs
# usage: build.sh <sourcefile>

function error {
echo "Build failed."
exit
}

fn=${1%.*}

if [ -f $fn.gb ]
  then
   rm $fn.gb
fi

echo "Assembling..."
rgbasm -o$fn.o $1 || error
echo "Linking..."
rgblink -n$fn.sym -m$fn.map -o$fn.gb $fn.o || error
echo "Fixing..."
rgbfix -p 255 -v $fn.gb || error

echo "Created: $fn.gb"
rm *.o