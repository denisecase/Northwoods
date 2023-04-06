# Script to build the documentation

echo 
cd ..

echo "Building documentation..."
jupyter-book build Northwoods

echo "Returning to Northwoods folder..."
cd Northwoods


echo "Copying documentation to docs folder..."
cp -r _build/html/* docs/

#echo "Removing _build folder..."
#rm -rf _build

echo "Done!"
