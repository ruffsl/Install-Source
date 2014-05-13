version="1.7.1"
pcl="pcl-$version"

echo "Installing Dependenices"
sudo apt-get -y install build-essential checkinstall cmake pkg-config yasm
sudo apt-get -y install libboost-all-dev
sudo apt-get -y install vtk6

echo "Downloading $pcl"
mkdir $pcl
cd $pcl
wget -O $pcl.tar.gz https://github.com/PointCloudLibrary/pcl/archive/$pcl.tar.gz
mkdir $pcl
tar --strip-components=1 -xvzf $pcl.tar.gz -C $pcl

echo "Installing $pcl"
cd $pcl
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release .. 
make -j4
sudo make install
echo "Finished: $pcl is ready to be used"