version="3.0.0"
gtsam="gtsam-$version"

echo "Installing Dependenices"
sudo apt-get -y install build-essential checkinstall cmake pkg-config yasm
sudo apt-get -y install libboost-all-dev

echo "Downloading $gtsam"
mkdir $gtsam
cd $gtsam
wget -O $gtsam.zip https://research.cc.gatech.edu/borg/sites/edu.borg/files/downloads/$gtsam.zip
unzip $gtsam.zip

echo "Installing $gtsam"
cd $gtsam
mkdir build
cd build
cmake ..
make
sudo make install
echo "Finished: $gtsam is ready to be used"