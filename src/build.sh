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

echo "Asset conversion..."
for file in *.png; do
  rgbgfx -u -o ${file%.*}.2bpp -t ${file%.*}.tilemap $file;
done

echo "Assembling..."
rgbasm -o$fn.o $1 || error
echo "Linking..."
rgblink -n$fn.sym -m$fn.map -o$fn.gb $fn.o || error
echo "Fixing..."
rgbfix -p 255 -v $fn.gb || error

echo "Created: $fn.gb"
rm *.o