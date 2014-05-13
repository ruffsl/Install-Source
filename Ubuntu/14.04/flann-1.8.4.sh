version="1.8.4"
flann="flann-$version"

echo "Installing Dependenices"
sudo apt-get -y install build-essential checkinstall cmake pkg-config yasm

echo "Downloading $flann"
mkdir $flann
cd $flann
wget -O $flann.zip http://www.cs.ubc.ca/research/flann/uploads/FLANN/$flann-src.zip
mkdir $flann
unzip "$flann.zip" -d "$flann" && f=("$flann"/*) && mv "$flann"/*/* "$flann" && rmdir "${f[@]}"

echo "Installing $flann"
cd $flann
mkdir build
cd build
cmake .. 
make -j4
sudo make install
echo "Finished: $flann is ready to be used"