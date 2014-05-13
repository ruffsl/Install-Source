version="2012.1"
qhull="qhull-$version"

echo "Installing Dependenices"
sudo apt-get -y install build-essential checkinstall cmake pkg-config yasm

echo "Downloading $qhull"
mkdir $qhull
cd $qhull

wget -O $qhull.tgz http://www.qhull.org/download/$qhull-src.tgz
mkdir $qhull
tar --strip-components=1 -xvzf $qhull.tgz -C $qhull

echo "Installing $qhull"
cd $qhull
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release .. 
make -j4
sudo make install
echo "Finished: $qhull is ready to be used"