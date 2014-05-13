vtk="vtk"

echo "Installing Dependenices"
sudo apt-get -y install build-essential checkinstall cmake pkg-config yasm
sudo apt-get -y install libxt-dev
sudo apt-get -y install git

echo "Downloading $vtk"
# git clone git://vtk.org/VTK.git $vtk

echo "Installing $vtk"
cd $vtk
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE:STRING=Release ..
make
sudo make install
echo "Finished: $vtk is ready to be used"